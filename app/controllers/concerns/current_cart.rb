module CurrentCart
  extend ActiveSupport::Concern

  private

  def set_cart
	   cart_id = current_user.cart_id
	   @cart = Cart.find(cart_id)
 	 rescue ActiveRecord::RecordNotFound
	   @cart = Cart.create      
	   current_user.cart_id = @cart.id
	   current_user.save
  end
end
