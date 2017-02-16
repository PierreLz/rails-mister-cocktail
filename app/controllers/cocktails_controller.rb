class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @new_cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def create
    @new_cocktail = Cocktail.create(cocktail_params)
    if @new_cocktail.save
      redirect_to cocktails_path
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
    params.require(:cocktail).permit(:name)
  end
end
