class AddStatusToAlerts < ActiveRecord::Migration[5.0]
  def change
  	add_column :alerts, :status, :integer, default: 0
  end
end
