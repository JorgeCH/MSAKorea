class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :date
      t.string :place
      t.text :description
      t.string :linkfb
      t.string :contact
      t.string :photo1
      t.string :photo2

      t.timestamps null: false
    end
  end
end
