class AddTokenToFinders < ActiveRecord::Migration[5.0]
  def change
  	add_column :finders, :auth_token, :string
  end
end
