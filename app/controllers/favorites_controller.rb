class FavoritesController < ApplicationController
  # GET /favorites
  def index
    @recipes = current_user.favorites.map{ |favorite| favorite.favoritable }
  end

  # POST /recipes/:id/toggle_favorite
  def toggle_favorite
    # Grab the recipe
    @recipe = Recipe.find(params[:id])
    # Check if user has favorite of not
    if current_user.favorited?(@recipe)
      # /remove favorite
      current_user.unfavorite(@recipe)
    else
      current_user.favorite(@recipe)
    end
    redirect_back(fallback_location: recipe_path(@recipe))
  end
end
