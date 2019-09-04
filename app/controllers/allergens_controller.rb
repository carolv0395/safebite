class AllergensController < ApplicationController
  before_action :fetch_allergen, only: :destroy

  def index
    @allergens = policy_scope(Allergen)
    @user = current_user if user_signed_in?
  end

  def new
    @allergen = Allergen.new
    authorize @allergen
  end

  def create
    # create several allergens according to the array of user choices
    ids = params[:allergen][:allergen_families_ids]
    id_type = params[:allergen][:allergen_type]
    if ids.any?
      ids.each do |id|
        @allergen = Allergen.new(user: current_user,
                                 allergen_family_id: id_type == 'family' ? id : nil,
                                 ingredient_id: id_type == 'ingredient' ? id : nil)
        authorize @allergen
        @allergen.save
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @allergen.destroy
    # redirect_to root_path
  end

  private

  def fetch_allergen
    @allergen = Allergen.find(params[:id])
    authorize @allergen
  end

  def allergen_params
    params.require(:allergen).permit(:allergen_type, allergen_families_ids: [])
  end
end
