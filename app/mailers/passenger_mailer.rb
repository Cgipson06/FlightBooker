class PassengerMailer < ApplicationMailer
  default from: 'notifications@FlightBooker.com'
  
  def thank_you_email(user)
    @user = user
    @url = 'http://FlightBooker.com/Login'
    @booking = @user.bookings.last
    mail(to: @user.email, subject: 'Thanks for booking with FlightBooker!')
  end
 
end
