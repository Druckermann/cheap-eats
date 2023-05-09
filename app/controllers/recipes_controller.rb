class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    if params[:search].present?
      search_term = params[:search].downcase
      @recipes = @recipes.where("lower(name) LIKE ?", "%#{search_term}%")
    end
  end

  def show
    begin
      @recipe = Recipe.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to recipes_path, flash: { error: "Recipe not found." }
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.save
    redirect_to @recipe
  end

  def favorites
    @recipes = current_user.favorites.map{ |favorite| favorite.favoritable }
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :image, :description, :cook_time, :prep_time, :servings, :ingredients, :steps)
  end
end
