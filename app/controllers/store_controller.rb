class StoreController < ApplicationController
  before_filter :authorize, only: ['show']
 def index
    @products = Product.all.order('created_at DESC')
      if params[:search]
          if !(Product.search(params[:search]).empty?) 
            @products = Product.search(params[:search]).order("created_at DESC") 
        else 
            @error = "\"#{params[:search].capitalize}\" not found"
        end
     end
 end

 def show 
      @product = Product.find(params[:id])
 end
end