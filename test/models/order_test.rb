require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  fixtures :products
  fixtures :line_items

   test "order attributes must not be empty" do
    order = Order.new

    assert order.invalid?
    assert order.errors[:name].any?
    assert order.errors[:address].any?
    assert order.errors[:email].any?
   end

  test 'pay_type must be Check, Credit card or Purchase Order' do
  	bad = [ 'euro', 'berathoxha', '50$' ]
  	good = [ 'Check', 'Credit card', 'Purchase Order' ]
  	bad.each do |pay_type|
      assert new_order(pay_type).invalid?, "#{pay_type} shouldn't be valid"
    end
    good.each do |pay_type|
      assert new_order(pay_type).valid?, "#{pay_type} should be valid"
    end
  end

  test 'add_line_items_from_cart method' do
  	 cart = Cart.new 
  	 cart.line_items = [ line_items(:one), line_items(:two) ]
  	 order = new_order("Credit card")
  	 order.add_line_items_from_cart(cart)
  	 cart.line_items.each do |item|
  	 	assert_nil item.cart_id
  	 end
  	 assert_equal cart.line_items, order.line_items
  end

  def new_order(pay_type)
  	Order.new(
  	  name: 'user',
  	  address: 'hysni curri',
  	  email: 'email@gmail.com',
      pay_type: pay_type
    )
  end
end
