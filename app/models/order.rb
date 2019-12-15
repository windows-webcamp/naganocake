class Order < ApplicationRecord
	belongs_to :user
	has_many :order_products
	
	enum payment_method: {クレジットカード: 1, 銀行振込: 2}
	enum order_status: {nyuukin: 1, hsssou: 2, done: 3}
end
