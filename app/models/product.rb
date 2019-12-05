class Product < ApplicationRecord
	belongs_to :genre
	has_many :carts
	has_many :order_products
end
