class AddBookingIdToPassengers < ActiveRecord::Migration
  def change
    change_table "passengers" do |t|
      t.integer "booking_id"
    end
    
    add_index :passengers, :booking_id
  end
end
