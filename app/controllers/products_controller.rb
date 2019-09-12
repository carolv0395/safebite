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
    @products = Product.where(category: params[:category]).search_allergens(current_user)
    authorize @products
  end

  def show
    @product = Product.find(params[:id])
    authorize @product

    @quantity_in_pending_order = OrdersProduct.where(product: @product, order: current_user.pending_order_in_cart).first

    fetch_ingredients

    if @quantity_in_pending_order
      @quantity_in_pending_order = @quantity_in_pending_order.quantity
    else
      @quantity_in_pending_order = 0
    end

    @total_price = @product.orders_products.sum("(orders_products.price_cents * orders_products.quantity)/100")
  end

  private

  def fetch_ingredients
    @ingredients = []
    IngredientsProduct.where(product_id: @product).each do |ingredients_product|
      @ingredients << Ingredient.where(id: ingredients_product.ingredient_id).map(&:name).first.capitalize
    end
    return @ingredients
  end
end
