class ContactsController < ApplicationController
	def new 
		@contact = Contact.new 
	end

	def create
		 @user = User.new(contact_params)
		if @user.save
		 UserMailer.notify_comment(@user).deliver
			
			flash.now[:notice] = 'Thank you for your message!'
		else
			flash.now[:error] = 'Cannot send message.'
			render :new
		end
	end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_handy
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:new, :email, :message, :nickname)
	end
 end


 