class DosesController < ApplicationController
  before_action :find_dose, only: [ :show, :destroy ]
  before_action :find_cocktail, only: [ :new, :create, :show ]

  def new
    # ^ this is not being used
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # raise
    # @dose = Dose.new(dose_params)
    # @dose.cocktail = @cocktail == Cocktail.new(params[:cocktail_id])
    # ^ provided by find cocktail.. gives the cocktail id
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail) # redirects to the show page
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id) # needs ingredient id?
  end

  def find_dose
    @dose = Dose.find(params[:id])
  end
  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    # this follows whats required in the route path
    # and what allows form information to be uploaded
  end
end
#new_coctail_path(@cocktail)
# @cocktail.doses.each to show on coctail page
