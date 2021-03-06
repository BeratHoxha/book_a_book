class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart , only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, only: [:index]


  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/new
  def new
    if @cart.line_items.empty?
      redirect_to products_url, notice: "Your cart is empty"
      return
    end
    
    @order = Order.new
  end
  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    respond_to do |format|
      if @order.save
        if @order.pay_type == 'Credit card'
          format.html { redirect_to credit_bill_path(id: @order.id) }
        else 
           format.html { redirect_to bills_url(id: @order.id), notice: 'Thank you for your order.' }
           format.json { render :show, status: :created, location: @order }
         end
         OrderNotifier.received(@order).deliver
      else
          format.html { render :new }
          format.json { render json: @order.errors, status: :unprocessable_entity }
       end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end
