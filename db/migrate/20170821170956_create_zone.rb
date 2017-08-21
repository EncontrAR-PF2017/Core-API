class CreateZone < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
   	  t.string :name
      t.float :south_west_lat
      t.float :south_west_long
      t.float :north_east_lat
      t.float :north_east_long

      t.timestamps
    end
    add_reference :alerts, :zone, index: true
  end
end
