class Hike < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :review, presence: true
end
