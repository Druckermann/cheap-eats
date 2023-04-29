class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :description
      t.binary :image
      t.string :url
      t.datetime :submission_date
      t.datetime :start_date
      t.datetime :end_date
      t.references :business, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
