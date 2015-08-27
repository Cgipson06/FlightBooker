class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings, :foreign_key => "passenger_id"

  
  def flight_date_formatted
    departure_time.strftime("%d/%m/%Y")
  end
  
  def self.search(terms)
    if terms[:flight_date]
      Flight.where('to_airport_id LIKE ? AND from_airport_id LIKE ? AND departure_time BETWEEN ? AND ?', "#{terms[:to_airport_id]}", "#{terms[:from_airport_id]}", "#{terms[:flight_date].to_time.beginning_of_day}","#{terms[:flight_date].to_time.end_of_day}")
    else
      Flight.all
    end
  end


end
