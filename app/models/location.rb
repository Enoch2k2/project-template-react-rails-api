class Location < ApplicationRecord
  has_many :hikes, dependent: :destroy
  has_many :users, through: :hikes

  validates :city, presence: true
  validates :trail_name, presence: true
  validates :trail_name, uniqueness: { scope: :city, message: "can only have uniq trail names per city" }
end
