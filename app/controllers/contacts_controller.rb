class ContactsController < ApplicationController



  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:gender, :first_name, :last_name, :first_name_alt, :last_name_alt)
  end

end
