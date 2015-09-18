class BookingsController < ApplicationController

def new
  @flight = Flight.find(params[:flight_id])
  @booking = Booking.new
  @passengers = params[:passengers]
  @passengers.to_i.times { @booking.passengers.build }
end

def create
  @booking = Booking.new(booking_params)
  
  if @booking.save
    @booking.update_attribute(:flight_id, params[:flight_id])
    flash[:success] = "Your flight has been booked!"
    @booking.passengers.each do |p|
    
     # PassengerMailer.thank_you_email(p).deliver_later
    end
    redirect_to booking_path(@booking)
  else
    @flight = Flight.find(params[:flight_id])
    @booking.errors.each do |type, message| 
      flash.now[:alert] = " #{type} #{message}"
    end
    render 'new'
  end
end
   
   def show
     @booking = Booking.find(params[:id])
   end
   



private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :id, :name, :email ] )
    end


end

