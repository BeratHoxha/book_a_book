require 'test_helper'

class CartTest < ActiveSupport::TestCase
  fixtures :products
  fixtures :carts

	test "added product in cart" do 
		cart = carts(:one)
		count = 0
		3.times do 
			current_item = cart.add_product(products(:ruby).id)
			count += 1
			assert_equal current_item.quantity, count
		end
		current_item = cart.add_product(products(:one).id)
		assert_equal current_item.quantity, 1
	end
end
