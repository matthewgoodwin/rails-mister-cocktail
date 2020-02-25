class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [ :show, :edit, :update, :destroy ]
  before_action :cocktail_params, only: [:create]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose= Dose.new # needed to dsiplay the dose form in the cocktail show
    # why can I use the Dose.new here in the cocktals form
  end

  def new
   @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail) # redirects to the show page
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    # @cocktail.save
    redirect_to cocktail_path(@cocktail) # redirects to the show page
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache) # needs ingredient id?
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
