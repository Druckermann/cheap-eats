class Deal < ApplicationRecord
  belongs_to :business, optional: true
  belongs_to :user, optional: true
  validates :name, :category, :price, :description, presence: true
  has_one_attached :image
  has_many :recipe_deals
  has_many :recipes, through: :recipe_deals
end

# Submission date automatic?
