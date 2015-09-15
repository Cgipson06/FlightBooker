class FlightsChangeForPg < ActiveRecord::Migration
  def change
    change_column :flights, :duration, 'integer USING CAST(duration AS integer)'
  end
end
