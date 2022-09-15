class Listing < ApplicationRecord
  has_many :bookings
  has_many :reversations
  has_many :missions

  validates :num_room, presence: true, numericality: { only_integer: true }
end
