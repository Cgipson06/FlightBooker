class NukeFlights < ActiveRecord::Migration
  def change
    drop_table :flights
  end
end
