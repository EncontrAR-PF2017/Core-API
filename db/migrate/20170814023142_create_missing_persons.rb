class CreateMissingPersons < ActiveRecord::Migration[5.0]
  def change
    create_table :missing_persons do |t|
      t.string :name
      t.string :lastname
      t.string :dni
      t.integer :sex
      t.integer :age
      t.string :photo

      t.timestamps
    end
  end
end
