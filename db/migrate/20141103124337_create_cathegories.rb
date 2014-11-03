class CreateCathegories < ActiveRecord::Migration
  def change
    create_table :cathegories do |t|
      t.string :cathegory_name

      t.timestamps
    end
  end
end
