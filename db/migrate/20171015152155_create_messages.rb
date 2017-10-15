class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
    	t.belongs_to :conversation, index: true
    	t.string :content
    	t.string :sender
      t.timestamps
    end
  end
end
