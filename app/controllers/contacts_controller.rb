class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.includes(:building)
    
  end

  def new
    @contact = Contact.new
    # @building = Building.find_by(id: params[:building_id])
    @building = Building.find(params[:id])
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      flash[:notice] = "新規問合せを登録しました"
      redirect_to contact
    else
      redirect_to contact, flash: {
      # redirect_to new_contact_path, flash: {
        contact: contact,
        error_messages: contact.errors.full_messages
      }
    end
  end

  def show
    @contact = Contact.find(params[:id])
    # @building = Building.find(@contact.id)
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(contact_params)
    redirect_to contact
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.delete
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:building_id, :contact, :respond, :status)
  end

  
end
