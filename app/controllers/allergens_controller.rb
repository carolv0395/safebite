class AllergensController < ApplicationController
  before_action :fetch_allergen, only: [:destroy]

  def index
    @allergens = policy_scope(Allergen)
    @user = current_user if user_signed_in?
  end

  def edit_families
    # define the data to check the right allergens in the view
    @allergens = current_user.allergen_families
    authorize @allergens
  end

  def update_families
    # destroy the allergens
    current_user.allergen_families.destroy_all
    if params[:allergen].nil?
      @allergens = current_user.allergen_families
      authorize @allergens
      render :edit_families
      flash[:alert] = "Please select your allergy."
    else
      ids = params[:allergen][:allergen_families_ids]
      ids.each do |id|
        @allergen = Allergen.new(user: current_user, allergen_family_id: id)
        authorize @allergen
        @allergen.save
      end
      flash[:notice] = "You've saved your allergies!"
      redirect_to root_path
    end
  end

  private

  def fetch_allergens
    @allergens = policy_scope(Allergen)
    authorize @allergen
  end

  def allergen_params
    params.require(:allergen).permit(:allergen_type, allergen_families_ids: [])
  end
end
