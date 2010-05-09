class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = 'Contact was successfully created!'
      redirect_to :action => 'index' and return
    else
      flash[:error] = 'That contact could not be created. Please try again.'
      render :action => 'new'
    end
  end
  
  def index
    if @search = params[:search]
      @contacts = Contact.by_name @search
    else
      @contacts = Contact.all
    end
  end
end
