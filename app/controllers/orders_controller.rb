class OrdersController < ApplicationController
  def add_product_quantity
    # create/get cart
    order_pending = current_user.pending_order_in_cart
    # associate product and qty to cart
    product = Product.find(params[:product_id])
    # check if order_product exist
    order_product = order_pending.orders_products.where(product: product).first
    # if exists, increment qty by 1
    if order_product
      order_product.quantity += 1
      order_product.save
    # if not, add product to the cart w/ qty = 1
    else
      OrdersProduct.create(quantity: 1, product: product, order: order_pending)
    end
    authorize order_pending
    # redirect to product show
    redirect_to product_path(product)
  end

  def remove_product_quantity
    # create/get cart
    order_pending = current_user.pending_order_in_cart
    # associate product and qty to cart
    product = Product.find(params[:product_id])
    # check if order_product exist
    order_product = order_pending.orders_products.where(product: product).first
    # if exists, decrease qty by 1
    if order_product
      if order_product.quantity == 0
        order_product.destroy
      else
        order_product.quantity -= 1
        order_product.save
      end
    end
    authorize order_pending
    # redirect to product show
    redirect_to product_path(product)
  end

  def remove_product
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    order_product.destroy
  end

  def index
    @orders = policy_scope(Order)
    @user = current_user if user_signed_in?
    authorize @orders
  end

  def show
    @order = Order.current_user.pending_order_in_cart
    authorize @order
  end

  # def create
  #   @order = Order.new(order_params)
  #   authorize @order
  #   @product = Product.find(params[:product_id])
  #   @order.user_id = current_user
  #   @reser
  # end

  # def new
  # end

  private

  def order_params
    params.require(:order).permit(:order_status, :user_id, :payment, :created_at, :updated_at)
  end
end
