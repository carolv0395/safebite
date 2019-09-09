class PagesController < ApplicationController
  def home
    redirect_to edit_families_allergens_path if current_user.allergens.empty?
    @products = Product.all
    if params[:product] && params[:product][:search]
    	@products = @products.where('lower(products.name) LIKE ?', '%' + params[:product][:search].downcase + '%')
    	session[:search] = params[:product][:search]
    else
    	session[:search] = ''
    end

    @products_love = @products.sample(4)
    if current_user.allergens_families[0]
      @allergen_family = current_user.allergens_families[0].allergen_family.name
      # show Products without Ingredients that belong to an AllergenFamily
      allergen_family = AllergenFamily.find_by(name: @allergen_family)
      unwanted_ingredients = Ingredient.where(allergen_family_id: allergen_family.id)
      @filtered_products = []
      is_product_inside_list = []
      products_ingredients_lists = @products.map(&:ingredients)
      products_ingredients_lists.each_with_index do |ingredient_list, index|
        ingredient_list.each do |ingredient|
          is_product_inside_list << "avoid" if unwanted_ingredients.include? ingredient
        end
        @filtered_products << @products[index] unless is_product_inside_list.include? "avoid"
      end
    else
      @filtered_products = @products
    end
  end

  def test
  end
end
