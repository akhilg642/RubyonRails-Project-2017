class CombineItemsInCart < ActiveRecord::Migration[5.0]
  def change
  end
  def up
	  Cart.all.each do |cart|
		  sums = cart.line1_items.group(:product1_id).sum(:quantity)
          sums.each do |product1_id, quantity|
			  if quantity > 1
				  # remove individual items
				  cart.line1_items.where(product1_id: product1_id).delete_all
                  # replace with a single item
                  cart.line1_items.create(product1_id: product1_id, quantity: quantity)
              end 
       end
    end
end
	def down
		# split items with quantity>1 into multiple items
		Line1Item.where("quantity>1").each do |line1_item|
			# add individual items
			line1_item.quantity.times do
				Line1Item.create cart_id: line1_item.cart_id,
				product1_id: line1_item.product1_id, quantity: 1
			end
			# remove original item
			line1_item.destroy
		end
end
	
	
end
