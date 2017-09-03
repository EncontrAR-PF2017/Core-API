class AddParamsToMissingPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :missing_people, :gender, :integer
  	add_column :missing_people, :last_known_loc_lat, :float, default: 0
  	add_column :missing_people, :last_known_loc_long, :float, default: 0
  	remove_column :missing_people, :sex
  end
end
