class Deal < ApplicationRecord
  belongs_to :business, optional: true
  belongs_to :user, optional: true
  validates :name, :category, :price, :description, :submission_date, presence: true
  has_one_attached :image
  has_many :recipes, through: :recipe_deals
end

# Drop-down for category?
# Submission date automatic?
