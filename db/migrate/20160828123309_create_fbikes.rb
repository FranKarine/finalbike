class CreateFbikes < ActiveRecord::Migration
  def change
    create_table :fbikes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url

      t.timestamps null: false
    end
  end
end
