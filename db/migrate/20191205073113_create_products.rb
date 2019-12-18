class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.integer :genre_id, null: false
      t.string :product_name, null: false
      t.integer :price, null: false
      t.text :product_intoroduction, null: false
      t.text :product_image_id, null: false
      t.integer :sale_status, null: false
      t.datetime :deleted_at
    end
  end
end
