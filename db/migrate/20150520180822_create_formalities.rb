class CreateFormalities < ActiveRecord::Migration
  def change
    create_table :formalities do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
