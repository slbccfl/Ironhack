class ContactsController < ApplicationController
	def index
		@contacts = Contact.order("name ASC")
		render 'index'
	end
  def create
    # Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone],
      :email => params[:contact][:email])
    contact.save
    redirect_to("/contacts")
  end
  def show
  	@contact=Contact.find_by(id: params[:id])
  end
end
