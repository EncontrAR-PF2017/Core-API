class AddCampaigns < ActiveRecord::Migration[5.0]
  def change
  	  create_table :campaigns do |t|
      t.text :title
      t.text :description
      t.datetime :expire_date
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
