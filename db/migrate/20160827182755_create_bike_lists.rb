class CreateBikeLists < ActiveRecord::Migration
  def change
    create_table :bike_lists do |t|
      t.string :name
      t.text :type
      t.decimal :price
      t.string :image_url

      t.timestamps null: false
    end
  end
end
