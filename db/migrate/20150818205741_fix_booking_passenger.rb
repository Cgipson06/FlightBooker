class FixBookingPassenger < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
      t.remove :customer
      t.integer :passenger_id
    end
  end
end
