class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :link

      t.timestamps null: false
    end
  end
end
