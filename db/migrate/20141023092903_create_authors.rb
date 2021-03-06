class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.references :books, index: true

      t.timestamps
    end
  end
end
