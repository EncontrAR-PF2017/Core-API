class AddDniToFinders < ActiveRecord::Migration[5.0]
  def change
    add_column :finders, :dni, :string
  end
end
