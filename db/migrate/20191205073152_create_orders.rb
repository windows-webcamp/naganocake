class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.integer :delivery_cost, default: 800, null: false
      t.integer :total_price, null: false
      t.integer :order_status, default: 1, null: false
      t.integer :payment_method
    end
  end
end
