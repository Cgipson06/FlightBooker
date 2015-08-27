class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :dest_id
      t.datetime :departing_time
      t.time :duration

      t.timestamps null: false
    end
  end
end
