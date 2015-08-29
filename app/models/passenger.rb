class Passenger < ActiveRecord::Base
has_many :flights, through: :bookings, :foreign_key => "flight_id"
has_many :bookings, through: :passenger_bookings
has_many :passenger_bookings

validates :name, presence: true
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
