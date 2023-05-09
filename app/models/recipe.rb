class Recipe < ApplicationRecord
  acts_as_favoritable

  validates :name, :servings, :cook_time, :prep_time, :description, :ingredients, :steps, presence: true
  has_one_attached :image
  has_many :deals, through: :recipe_deals
  has_many :users, through: :favourites
end

# AT: can try commenting out image if seed problems
