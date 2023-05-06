class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    if params[:search].present?
      search_term = params[:search].downcase
      @recipes = @recipes.where("lower(name) LIKE ?", "%#{search_term}%")
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
