class CocktailsController < ApplicationController
  before_filter :disable_nav, only: [:home]
  def home
  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @new_cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @new_dose = Dose.new
    @new_doses = @cocktail.doses
    @ingredients = Ingredient.all
  end

  def create
    @new_cocktail = Cocktail.create(cocktail_params)
    if @new_cocktail.save
      redirect_to cocktail_path(@new_cocktail)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
