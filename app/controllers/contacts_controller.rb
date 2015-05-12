class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Your message was sent. We will get back to you promptly!"
      redirect_to new_contact_path 
    else
      flash[:danger] = 'An error occured; your message was not sent. Maybe give it another try.'
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
       params.require(:contact).permit(:name, :email, :comments)
    end
  
end
