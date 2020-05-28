class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
  has_many :bookings
  has_many :listings
  has_many :reviews
  validates :email, presence: true, uniqueness: true
  validates :gender, inclusion: { in: ["Male", "Female", "Diverse", "Prefer not to disclose"] }
  has_one_attached :profile_picture
end
