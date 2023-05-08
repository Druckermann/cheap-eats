class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :deals
  has_many :favourites, through: :recipes
  validates :username, :password, :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
