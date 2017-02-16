class DosesController < ApplicationController
  def new
    @dose= Dose.new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
