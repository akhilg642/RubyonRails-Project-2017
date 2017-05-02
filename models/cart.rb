class Cart < ApplicationRecord
	has_many :line1_items, dependent: :destroy
def add_product(product1_id)
	current_item = line1_items.find_by_product1_id(product1_id)
    if current_item
		current_item.quantity += 1
    else
		current_item = line1_items.build(product1_id: product1_id)
    end
    current_item
end
def total_price
	line1_items.to_a.sum { |item| item.total_price }
end
end
