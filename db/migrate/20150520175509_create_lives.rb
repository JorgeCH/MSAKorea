class CreateLives < ActiveRecord::Migration
  def change
    create_table :lives do |t|
      t.string :title
      t.text :description
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :photo

      t.timestamps null: false
    end
  end
end
