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
  end

  def test
  end
end
