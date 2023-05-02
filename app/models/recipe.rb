class Recipe < ApplicationRecord
  validates :name, :image, :servings, :cook_time, :prep_time, :description, :ingredients, :steps, presence: true
  has_one_attached :image
  has_many :deals, through: :recipe_deals
end
