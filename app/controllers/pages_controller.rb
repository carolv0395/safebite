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

    @products_love = @products.sample(4)
    if current_user.allergens_families[0]
      @allergen_family = current_user.allergen_families
      search_allergens
    end
  end


  private

  def search_allergens
      @filtered_products = []
      allergens_families = current_user.allergen_families.each do |allergen_family|
      products_list = @products.each do |product|
          if (allergen_family.ingredients.pluck(:id) & product.ingredients.pluck(:id)).empty?
            @filtered_products
          else
            @filtered_products << product
          end
        end
      end
  end

end





