class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :position
      t.string :email
      t.integer :year
      t.string :photo

      t.timestamps null: false
    end
  end
end
