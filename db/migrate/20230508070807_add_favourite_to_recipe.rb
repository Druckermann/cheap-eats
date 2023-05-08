class AddFavouriteToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :favourite, :boolean
  end
end
