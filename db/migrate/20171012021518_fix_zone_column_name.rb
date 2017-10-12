class FixZoneColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :zones, :name, :label
  end
end
