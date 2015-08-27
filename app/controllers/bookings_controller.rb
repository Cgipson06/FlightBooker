class BookingsController < ApplicationController

def new
  @flight = Flight.find_by(:id => params[:flight_id])
  @booking = Booking.new
  @passengers = params[:passengers]
  @passengers.to_i.times { @booking.passengers.build }
end

def create
  @booking = Booking.new(booking_params)
  
  if @booking.save
    @booking.update_attribute(:flight_id, params[:flight_id])
    
  redirect_to root_url
   end
end


private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :id, :name, :email ] )
    end


end

