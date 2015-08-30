# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Airport.create(airport_code: "NYC")
b = Airport.create(airport_code: "SFO")
c = Airport.create(airport_code: "ABIA")

a1 = Airport.first
a2 = Airport.find(2)
a3 = Airport.last


5.times do |p|
  date = (1..500).to_a.sample.days.from_now
  Flight.create(from_airport: a1, to_airport: a2, departure_time: date, duration: 90)
  
  Flight.create(from_airport: a2, to_airport: a1, departure_time: date, duration: 90)
  Flight.create(from_airport: a1, to_airport: a3, departure_time: date, duration: 90)
  Flight.create(from_airport: a3, to_airport: a1, departure_time: date, duration: 90)
  Flight.create(from_airport: a2, to_airport: a3, departure_time: date, duration: 90)
  Flight.create(from_airport: a3, to_airport: a2, departure_time: date, duration: 90)

end
