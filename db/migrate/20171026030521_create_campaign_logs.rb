class CreateCampaignLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :campaign_logs do |t|
    	t.belongs_to :campaign, index: true
    	t.text :old_status
    	t.text :new_status
    	t.timestamps
    end
  end
end
