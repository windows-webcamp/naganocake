class AddPaymentMethodToOrderProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :order_products, :payment_method, :integer
  end
end
