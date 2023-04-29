class CreateRecipeDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_deals do |t|
      t.integer :quantity
      t.references :recipe, null: false, foreign_key: true
      t.references :deal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
