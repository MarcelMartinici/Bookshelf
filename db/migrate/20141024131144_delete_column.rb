class DeleteColumn < ActiveRecord::Migration
 def up
  remove_column :authors, :books_id
end

def down
  add_column :authors, :books_id, :boolean
end
end
