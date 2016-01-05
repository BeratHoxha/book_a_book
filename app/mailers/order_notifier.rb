class OrderNotifier < ApplicationMailer
  default from: "bookabook6@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: "'BOOK A BOOK' Store Order Received Confirmation"
  end
end