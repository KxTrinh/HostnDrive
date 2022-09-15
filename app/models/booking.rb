class Booking < ApplicationRecord
  belongs_to :listing

  validates :start_date, :end_date, presence: true
  validates_date :start_date, :end_date
end
