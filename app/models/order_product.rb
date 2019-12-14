class OrderProduct < ApplicationRecord
	belongs_to :product
	belongs_to :order
	enum payment_method: [['クレジットカード', 1], ['銀行振込', 2]]
end
