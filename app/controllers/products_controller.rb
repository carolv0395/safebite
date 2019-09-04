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
  end
end
