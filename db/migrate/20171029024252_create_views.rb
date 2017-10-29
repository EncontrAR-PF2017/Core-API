class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
    	t.belongs_to :alert, index: true
    	t.integer :finder_id
    	t.timestamps
    end
  end
end
