class AddIndicesBookings < ActiveRecord::Migration
  def change
    add_index :bookings, :passenger_id
    add_index :bookings, :flight_id
  end
end
