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
    if ids && ids.any?
      ids.each do |id|
        @allergen = Allergen.new(user: current_user,
                                 allergen_family_id: id)
        authorize @allergen
        @allergen.save
      end
      redirect_to root_path
    else
      @allergen = Allergen.new
      authorize @allergen
      render :new
    end
  end

  def edit_families
    # define the data to check the right allergens in the view
    @allergens = current_user.allergens_families
  end

  def update_families
    # destroy the allergens
    current_user.allergens_families.destroy_all
    ids = params[:allergen][:allergen_families_ids]
    if ids && ids.any?
      ids.each do |id|
        @allergen = Allergen.new(user: current_user,
                                 allergen_family_id: id)
        authorize @allergen
        @allergen.save
      end
      redirect_to root_path
    else
      @allergen = Allergen.new
      authorize @allergen
      render :new
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
