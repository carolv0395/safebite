class AllergensController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :fetch_allergen, only: :destroy

  def index
    @allergens = policy_scope(Allergen)
    @user = current_user if user_signed_in?
  end

  def new
    # @allergen = Allergen.new
    # authorize @allergen
  end

  def create
    @allergen = Allergen.new(allergen_params)
    authorize @allergen
    @allergen.user = current_user
    @allergen.save
    redirect_to allergen_path(@allergen)
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

  def
  end
end
