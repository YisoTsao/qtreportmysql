class ContactsController < ApplicationController
	before_action :set_contact , only: [:show, :edit, :update, :destroy]


	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
    ContactMailer.notify_comment(current_user,@contact).deliver
      redirect_to @contact
    else
      render :new
    end
  end

  private

  def set_contact
      @contact = Contact.find(params[:id])
    end


    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

 end


 