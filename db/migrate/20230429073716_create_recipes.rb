class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.binary :image
      t.integer :servings
      t.integer :cook_time
      t.integer :prep_time
      t.text :description
      t.text :ingredients
      t.text :steps

      t.timestamps
    end
  end
end
