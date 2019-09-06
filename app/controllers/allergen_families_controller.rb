class AllergenFamiliesController < ApplicationController
  def index
    @allergen_families = policy_scope(AllergenFamily)
    @user = current_user if user_signed_in?
  end

  def show
    @allergen_family = AllergenFamily.find(params[:id])
    authorize @allergen_family
  end
end
