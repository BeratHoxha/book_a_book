class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
    @contact = Contact.new(product_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to products_path, notice: 'Message was successfully sended.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @contact = Contact.find(params[:id])
    end

     def product_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
