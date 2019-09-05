class PagesController < ApplicationController
  def home
    redirect_to edit_families_allergens_path if current_user.allergens.empty?
  end

  def test
  end
end
