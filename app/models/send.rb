class Send < ApplicationRecord
	acts_as_paranoid
	belongs_to :user
	def to_address_name
		postcode + address + name
	end
end