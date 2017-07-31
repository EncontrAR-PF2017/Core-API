class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.text :title
      t.integer :notifications_sent
      t.datetime :expire_date
      t.belongs_to :campaign, index: true, foreign_key: true

      t.timestamps
    end
  end
end
