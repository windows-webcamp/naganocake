class Order < ApplicationRecord
	belongs_to :user
	has_many :order_products
	enum payment_method: [['クレジットカード', 1], ['銀行振込', 2]]
end
