class OrdersController < ApplicationController
  def add_product_quantity_quick_shop
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    if order_product
      order_product.quantity += 1
      order_product.price = product.price
      order_product.save
    else
      OrdersProduct.create(quantity: 1, product: product, order: order_pending, price_cents: product.price_cents)
    end
    flash[:notice] = "You added one item to your shopping basket."
    authorize order_pending
    redirect_to category_products_path(product.category)
  end

  def remove_product_quantity_quick_shop
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    if order_product
      if order_product.quantity == 0
        order_product.destroy
      else
        order_product.quantity -= 1
        order_product.save
      end
    end
    flash[:notice] = "You removed one item from your shopping basket."
    authorize order_pending
    redirect_to category_products_path(product.category)
  end

  def add_product_quantity
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    if order_product
      order_product.quantity += 1
      order_product.price = product.price
      order_product.save
    else
      OrdersProduct.create(quantity: 1, product: product, order: order_pending, price_cents: product.price_cents)
    end
    flash[:notice] = "You added one item to your shopping basket."
    authorize order_pending
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
      order_product.quantity -= 1
      if order_product.quantity == 0
        order_product.destroy
      else
        order_product.save
        flash[:notice] = "You removed one item from your shopping basket."
      end
    end
    authorize order_pending
    # redirect to product show
    redirect_to product_path(product)
  end

  def add_product_quantity_checkout
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    if order_product
      order_product.quantity += 1
      order_product.price = product.price
      order_product.save
    else
      OrdersProduct.create(quantity: 1, product: product, order: order_pending, price_cents: product.price_cents)
    end
    authorize order_pending
    redirect_to shopping_cart_orders_path(product)
  end

  def remove_product_quantity_checkout
    order_pending = current_user.pending_order_in_cart
    product = Product.find(params[:product_id])
    order_product = order_pending.orders_products.where(product: product).first
    if order_product
      order_product.quantity -= 1
      order_product.save
      order_product.destroy if order_product.quantity == 0
    end
    authorize order_pending
    redirect_to shopping_cart_orders_path(product)
  end

  def product_delete
    order_product = OrdersProduct.find(params[:id])
    authorize order_product.order
    order_product.destroy
    redirect_to shopping_cart_orders_path
  end

  def shopping_cart
    @order = current_user.pending_order_in_cart
    calculate_total
    @total_price = @results.sum
    @order.total = @total_price
    @order.save
    authorize @order
  end

  def show
    @order = current_user.orders.where(order_status: 'paid').find(params[:id])
    authorize @order
  end

  private

  def calculate_total
    @results = []
    @order.orders_products.each do |product|
      @results << product.quantity * product.price
    end
    @results
  end
end
  # def index
  #   @orders = policy_scope(Order)
  #   @user = current_user if user_signed_in?
  #   authorize @orders
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
