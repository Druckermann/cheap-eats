class RemoveFavoriteFromRecipe < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :favourite, :boolean
  end
end
