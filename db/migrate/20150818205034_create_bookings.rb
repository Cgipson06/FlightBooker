class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.string :customer
      t.timestamps null: false
    end
  end
end
