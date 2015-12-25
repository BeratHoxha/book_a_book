class StoreController < ApplicationController
  before_filter :authorize, only: ['show']
 def index
    products_tek = Product.search_by_category('Technology').first(4)
    products_child = Product.search_by_category('Children').first(4)
    @products = { 'Technology' => products_tek, 'Children' => products_child }
      if params[:search]
          if !(Product.search(params[:search]).empty?) 
            @products = { 
                'Product that you serched:' => Product.search(params[:search]).order("created_at DESC") 
              }
        else 
            @error = "\"#{params[:search].capitalize}\" not found"
        end
     end
 end

 def show 
      @product = Product.find(params[:id])
 end
end