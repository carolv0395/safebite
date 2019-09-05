class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = policy_scope(Product.all)
    @categories = []
    @products.each do |product|
      @categories << product.category
    end
    @categories.uniq!
  end

  def category
    @products = Product.where(category: params[:category])
    authorize @products
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
    @quantity_in_pending_order = OrdersProduct.where(product: @product, order: current_user.pending_order_in_cart).first
      if @quantity_in_pending_order
        @quantity_in_pending_order = @quantity_in_pending_order.quantity
      else
        @quantity_in_pending_order = 0
      end
  end
end
