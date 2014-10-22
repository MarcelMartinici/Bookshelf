class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Author
      t.text :Description
      t.integer :Year

      t.timestamps
    end
  end
end
