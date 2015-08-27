class AddIndexesToFlights < ActiveRecord::Migration
  def change
    add_index :flights, :start_id
    add_index :flights, :dest_id
  end
end
