class AddUniqueToDeviceIdInFinders < ActiveRecord::Migration[5.0]
  def change
  	add_index :finders, :device_id, unique: true
  end
end
