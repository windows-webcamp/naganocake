class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|

      t.timestamps
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :number, null: false
    end
  end
end
