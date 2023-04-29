class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :street
      t.string :suburb
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
