class Mission < ApplicationRecord
  belongs_to :listing

  validates :mission_type, inclusion: { in: %w[first_checkin last_checkout checkout_checkin] }
  validates :date, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
