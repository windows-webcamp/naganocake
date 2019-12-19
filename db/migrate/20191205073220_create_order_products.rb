class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|

      t.timestamps
      t.integer :order_id, null: false
      t.integer :product_id, null: false
      t.integer :number, null: false
      t.integer :subtotal_price, null: false
      t.integer :make_status, default: 1, null: false
    end
  end
end
