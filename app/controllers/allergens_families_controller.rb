class AllergensFamiliesController < ApplicationController
  def index
    @allergen_families = AllergenFamily.all
  end

  def show
    @allergen_family = AllergenFamily.find(params[:id])
  end
end
