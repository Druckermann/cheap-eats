class RecipeDeal < ApplicationRecord
  belongs_to :recipe
  belongs_to :deal
end
