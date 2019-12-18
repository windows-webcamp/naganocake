class OrderProduct < ApplicationRecord
	belongs_to :product
	belongs_to :order
	accepts_nested_attributes_for :order
	enum make_status: {製作待ち: 1, 製作中: 2, 製作完了: 3}
end
