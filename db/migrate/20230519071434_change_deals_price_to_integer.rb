class ChangeDealsPriceToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :deals, :price, :decimal, precision: 8, scale: 2
  end
end

# It's actually to decimal
