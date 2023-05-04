class Recipe < ApplicationRecord
  validates :name, :servings, :cook_time, :prep_time, :description, :ingredients, :steps, presence: true
  # has_one_attached :image
  has_many :deals, through: :recipe_deals
end

# validates image - add later!
