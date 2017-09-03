class CreateCampaignImages < ActiveRecord::Migration[5.0]
  def change
    create_table :campaign_images do |t|
    	t.belongs_to :campaign, index: true, foreign_key: true
      	t.string :url
      	t.timestamps
    end
  end
end
