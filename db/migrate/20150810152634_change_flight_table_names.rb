class ChangeFlightTableNames < ActiveRecord::Migration
  def change
    change_table :flights do |t|
      t.rename :start_id, :from_airport
      t.rename :dest_id, :to_airport
    end
  end
end
