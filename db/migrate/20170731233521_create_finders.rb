class CreateFinders < ActiveRecord::Migration[5.0]
  def change
    create_table :finders do |t|
      t.text :email, index: true
      t.text :name
      t.text :lastname
      t.text :device_id
      t.text :os
      t.text :alert_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
