class ProductsController < ApplicationController

 def index
    products_technology = Product.search_by_category('Technology').all.shuffle[0..3]
    products_business = Product.search_by_category('Business').all.shuffle[0..3]
    products_history = Product.search_by_category('History').all.shuffle[0..3]
    products_other = Product.search_by_category('Other').all.shuffle[0..3]
    @products = { 'Technology' => products_technology, 'Business' => products_business, 'History' => products_history, 'Other' => products_other }
      if params[:search]
          if !(Product.search(params[:search]).empty?) 
            @products = { 
                'Products that you serched:' => Product.search(params[:search]).order("created_at DESC") 
              }
        else 
            @error = "\"#{params[:search].capitalize}\" not found"
        end
     elsif params[:category]
          @products = { params[:category] => Product.search_by_category(params[:category]).order("created_at DESC") }
     end
 end

 def create
   if params[:set_locale]
      redirect_to products_url(locale: params[:set_locale])
   else
      @products = Product.order(:title)
   end
 end

 def show 
      @product = Product.find(params[:id])
      @comment = Comment.new
 end
end