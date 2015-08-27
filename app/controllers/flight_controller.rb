class FlightController < ApplicationController

def index
  @airports = Airport.all.map { |f| [ f.airport_code, f.id ] }
  @flights = Flight.search(params)
  
  end
end

