class ChangeColumn < ActiveRecord::Migration
  def change
  		rename_column(:book, :author, :author_id)
  		change_column(:book, :author_id,'integer USING CAST(author_id AS integer)')
  end
end
