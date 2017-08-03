class AddDeviceTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :finders, :device_tokens, :json, default: {}
  end
end
