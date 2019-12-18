class Product < ApplicationRecord
	belongs_to :genre
	has_many :carts
	has_many :order_products
	attachment :product_image
	enum sale_status: {販売中: 1, 販売停止: 2}
	acts_as_paranoid
end
