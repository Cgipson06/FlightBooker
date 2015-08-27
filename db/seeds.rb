# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Airport.create(airport_code: "NYC")
b = Airport.create(airport_code: "SFO")
a1 = Airport.first
a2 = Airport.last
20.times do |p|

  Flight.create(from_airport: a1, to_airport: a2, departure_time: Time.now, duration: p)
  
  Flight.create(from_airport: a2, to_airport: a1, departure_time: Time.now, duration: p)
  sleep 1
end
