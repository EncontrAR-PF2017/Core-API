class CreateAlertsAndFinders < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts_finders do |t|
   		t.belongs_to :alert, index: true
    	t.belongs_to :finder, index: true
    	t.timestamps
    end
  end
end
