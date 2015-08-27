class Passenger < ActiveRecord::Base
has_many :flights, through: :booking, :foreign_key => "flight_id"
belongs_to :booking
end
