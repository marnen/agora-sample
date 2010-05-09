class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = 'Contact was successfully created!'
      
      respond_to do |format|
        format.html { redirect_to :action => 'index' and return }
        format.json { render :text => '', :status => :ok and return}
      end
    else
      flash[:error] = 'That contact could not be created. Please try again.'
      
      respond_to do |format|
        format.html { render :action => 'new' }
        format.json { render :json => @contact.errors.to_json, :status => :unprocessable_entity }
      end
    end
  end
  
  def index
    if @search = params[:search]
      @contacts = Contact.by_name @search
    else
      @contacts = Contact.all
    end
    
    respond_to do |format|
      format.html
      format.json { render :json => @contacts.to_json }
    end
  end
end
