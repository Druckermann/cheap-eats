class FavoritesController < ApplicationController
  # GET /favorites
  def index
    @recipes = current_user.favorites.map{ |favorite| favorite.favoritable }
  end
end
