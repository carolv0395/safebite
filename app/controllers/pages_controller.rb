class PagesController < ApplicationController
  def home
    redirect_to new_allergen_path if current_user.allergens.empty?
  end

  def test
  end
end
