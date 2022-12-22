class User < ApplicationRecord
  has_many :hikes, dependent: :destroy
  has_many :locations, through: :hikes
  has_secure_password # password=, password, authenticate, also validates for us

  validates :username, presence: true, uniqueness: true
end
