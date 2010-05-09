class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to :action => 'index' and return
    else
      render :action => 'new'
    end
  end
  
  def index
  end
end
