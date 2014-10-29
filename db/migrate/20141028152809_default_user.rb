class DefaultUser < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, :default => :moderator
  end
end
