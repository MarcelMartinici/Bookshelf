class CreateBookCathegories < ActiveRecord::Migration
  def change
    create_table :book_cathegories do |t|
      t.integer :cathegory_id
      t.integer :book_id

      t.timestamps
    end
  end
end
