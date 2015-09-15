class FlightsChangeForPg < ActiveRecord::Migration
  def change
    change_column :flights, :duration, 'integer USING CAST(column_name AS integer)'
  end
end
