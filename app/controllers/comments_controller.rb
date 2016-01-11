class CommentsController < ApplicationController
  def create
	  @product = Product.find(params[:product_id])
	  @comment = @product.comments.build(user_params)
	  @comment.user = current_user
	  @comment.save
      respond_to do |format|
        format.html { redirect_to @product }
        format.js 
    end
  end

  private 

  def user_params
    params.require(:comment).permit(:content, :user_id, :product_id)
  end

end