class LikesController < ApplicationController
	def create
    @product = Product.find(params[:product_id])

  	@like = Like.create(status: true, product_id: @product.id, user_id: current_user.id)
  	@product.likes_count += 1
  	@product.save


  	if @like.save
  		redirect_to @product
  	end
  end
end
