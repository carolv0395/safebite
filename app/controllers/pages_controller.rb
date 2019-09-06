class PagesController < ApplicationController
  def home
    redirect_to edit_families_allergens_path if current_user.allergens.empty?
    @products = Product.all
    # show Products without Ingredients that belong to an AllergenFamily
    @allergen_family = current_user.allergens_families[0].allergen_family.name
  end

  def test
  end
end
