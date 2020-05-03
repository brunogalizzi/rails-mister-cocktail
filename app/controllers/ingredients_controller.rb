class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ing_selected = @ingredients.reject { |ingredient| @cocktail.ingredients.include?(ingredient) }
    @ingredient = Ingredient.new
  end

  def create
    @dose = Dose.new
    @ingredient = Ingredient.find_by(name: params[:state])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = @ingredient
    @dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find_by(ingredient_id: params[:id], cocktail_id: params[:cocktail_id])
    @dose.destroy
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def index; end

  def cad
    @ingredient = Ingredient.new
  end

  def post
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to cocktails_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
