class OrdersController < ApplicationController
  def create
    @order = current_user.pending_order_in_cart

    @product = Product.find(params[:product_id])
    @order_product = @order.orders_products.find_by(product: @product)

    if @order_product
      @order_product.quantity += 1
      @order_product.price_cents = @product.price * 100
      @order_product.save
    else
      @order_product = OrdersProduct.create(
        quantity: 1,
        product: @product,
        order: @order,
        price_cents: @product.price_cents
      )
    end

    @order.update(total: calculate_total)

    authorize @order

    render :update
  end

  def destroy
    @order = current_user.pending_order_in_cart

    @product = Product.find(params[:product_id])
    @order_product = @order.orders_products.find_by(product: @product)

    if @order_product
      @order_product.quantity -= 1
      @order_product.save
      @order_product.destroy if @order_product.quantity.zero?
    end

    @order.update(total: calculate_total)

    authorize @order

    render :update
  end

  def product_delete
    order_product = OrdersProduct.find(params[:id])
    authorize order_product.order
    order_product.destroy
    respond_to do |format|
      format.html { redirect_to shopping_cart_orders_path }
      format.js
    end
  end

  def shopping_cart
    @order = current_user.pending_order_in_cart
    @order.total = calculate_total
    @order.save

    authorize @order
  end

  def show
    @order = current_user.orders.where(order_status: 'paid').find(params[:id])
    authorize @order
    @order.total = calculate_total
    @order.save
  end

  private

  def calculate_total
    @order.orders_products.sum do |order_product|
      order_product.quantity * order_product.price
    end
  end
end
  # def index
  #   @orders = policy_scope(Order)
  #   @user = current_user if user_signed_in?
  #   authorize @ordersresultsresults
  # end

  # def show
  #   @order = Order.find(params[:id])
  #   authorize @order
  # end

  # def create
  #   @order = Order.new(order_params)
  #   authorize @order
  #   @product = Product.find(params[:product_id])
  #   @order.user_id = current_user
  #   @reser
  # end

  # def new
  # end

  # private

  # def order_params
  #  params.require(:order).permit(:order_status, :user_id, :payment, :created_at, :updated_at)
  # end
