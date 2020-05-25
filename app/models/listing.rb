class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :type, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
end
