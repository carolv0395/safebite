class AllergensController < ApplicationController
  before_action :fetch_allergen, only: [:destroy]

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

  def edit_all
    # define the data to check the right allergens in the view
    # build the links to this page to send the params allergen_family
      # that populates the value of the hidden field allergen_family
    if params[:allergen_family] == 'family'
      @allergens = current_user.allergens_families
    else
      @allergens = current_user.allergens_ingredients
    end
  end

  def update_all
    # destroy the allergens
    if params[:allergen_family] == 'family'
      current_user.allergens_families.destroy_all
    else
      current_user.allergens_ingredients.destroy_all
    end
     # same code as in what you alreay have in create
    # ....
  end

  def destroy
    @allergen.destroy
    # redirect_to root_path
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
