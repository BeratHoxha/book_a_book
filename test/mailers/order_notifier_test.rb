require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "'BOOK A BOOK' Store Order Received Confirmation", mail.subject
    assert_equal ["ax@example.org"], mail.to
    assert_equal ["bookabook6@gmail.com"], mail.from
    assert_match /<h3>Book a Book order received<\/h3>/,
     mail.body.encoded
  end
end
