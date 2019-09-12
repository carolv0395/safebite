class PagesController < ApplicationController
  def home
    @products = Product.all

    redirect_to edit_families_allergens_path if current_user.allergens.empty?

    if params[:product] && params[:product][:search]
      @products = @products.where('lower(products.name) LIKE ?', '%' + params[:product][:search].downcase + '%')
      session[:search] = params[:product][:search]
      redirect_to root_path, alert: "No result found" if @products.empty?
    else
      session[:search] = ''
    end

    if current_user.allergen_families.any?
      @allergen_family = current_user.allergen_families
      @filtered_products = search_allergens
    end

    @products_love = @filtered_products.sample(rand(4..8)) if !@filtered_products.nil?
  end


  private

  def search_allergens
    @products.includes(:ingredients).where
              .not(ingredients: { allergen_family: current_user.allergen_families })
  end
end
