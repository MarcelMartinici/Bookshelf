class ChangeColumn < ActiveRecord::Migration
  def change
  		rename_column(:books, :author, :author_id)
  		change_column(:books, :author_id,'integer USING CAST(author_id AS integer)')
  end
end
