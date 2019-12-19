class Order < ApplicationRecord
	belongs_to :user
	has_many :order_products
	accepts_nested_attributes_for :order_products
	enum payment_method: {クレジットカード: 1, 銀行振込: 2}
	enum order_status: {入金待ち: 1, 入金済み: 2, 発送済み: 3}
end