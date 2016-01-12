class BillsController < ApplicationController
 	include CurrentCart
	
  def index
   	@order = Order.find(params[:id])
   end
 end