class User < ApplicationRecord
  acts_as_favoritor

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :deals
  validates :username, :password, :email, presence: true
end
