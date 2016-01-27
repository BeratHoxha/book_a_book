module ProductsHelper
	def liked(id_param, product_id)
    if Like.find_by_user_id_and_product_id(id_param, product_id).nil? 
      false
    else
      Like.find_by_user_id_and_product_id(id_param, product_id).user_id == current_user.id 
    end    
  end
end
