class StoreController < ApplicationController
  before_filter :authorize, only: ['show']
 def index
    products_technology = Product.search_by_category('Technology').first(4)
    products_business = Product.search_by_category('Business').first(4)
    products_history = Product.search_by_category('History').first(4)
    products_other = Product.search_by_category('Other').first(4)
    @products = { 'Technology' => products_technology, 'Business' => products_business, 'History' => products_history, 'Other' => products_other }
      if params[:search]
          if !(Product.search(params[:search]).empty?) 
            @products = { 
                'Products that you serched:' => Product.search(params[:search]).order("created_at DESC") 
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