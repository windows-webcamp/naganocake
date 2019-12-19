class RemovePaymentMethodFromOrderProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_products, :payment_method, :integer
  end
end
