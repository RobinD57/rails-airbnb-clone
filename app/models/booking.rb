class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :status, inclusion: { in: ["Available", "Pending host confirmation", "Confirmed", "Canceled"] }
end
