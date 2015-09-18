class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, :through => :bookings
  validates :to_airport, presence: true
  validates :from_airport, presence: true
  
  
  def flight_date_formatted
    departure_time.strftime("%d/%m/%Y")
  end
  
  def self.search(terms)
    if terms[:flight_date]
      Flight.where('cast(to_airport_id as text) LIKE ? AND cast(from_airport_id as text) LIKE ? AND cast(departure_time as text) BETWEEN ? AND ?', "#{terms[:to_airport_id]}", "#{terms[:from_airport_id]}", "#{terms[:flight_date].to_time.beginning_of_day}","#{terms[:flight_date].to_time.end_of_day}")
    else
      Flight.all
    end
  end


end
