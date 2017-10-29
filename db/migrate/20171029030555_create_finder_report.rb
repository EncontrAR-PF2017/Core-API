class CreateFinderReport < ActiveRecord::Migration[5.0]
  def change
    create_table :finder_reports do |t|
    	t.belongs_to :finder, index: true
    	t.belongs_to :zone, index: true
    	t.timestamps
    end
  end
end
