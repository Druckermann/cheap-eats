class Deal < ApplicationRecord
  belongs_to :business
  belongs_to :user
  validates :name, :category, :unit, :price, :description, :submission_date, presence: true
  has_one_attached :image
  has_many :recipes, through: :recipe_deals
end

# Drop-down for category?
# Submission date automatic?
