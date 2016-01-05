require 'test_helper'

class ContactTest < ActiveSupport::TestCase
    test "contact attributes must not be empty" do
	  contact = Contact.new

	  assert order.invalid?
	  assert order.errors[:name].any?
	  assert order.errors[:address].any?
	  assert order.errors[:email].any?
   end
end
