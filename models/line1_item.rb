class Line1Item < ApplicationRecord
	belongs_to:product1
	belongs_to:cart
	def total_price
		product1.price * quantity
    end
end
