class CreateMissingPersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :missing_personas do |t|
      t.string :name
      t.string :lastname
      t.string :dni
      t.int :sex
      t.int :age
      t.string :photo

      t.timestamps
    end
  end
end
