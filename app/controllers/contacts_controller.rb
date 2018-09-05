class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  #respond_to :json, only: [:index]
  
  def index
    @contacts = Contact.all
    # respond_to do |format|
    #   format.json
    # end
  end

  def show
    # respond_to do |format|
    #   format.json
    # end
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
  	@contacts = Contact.all
    @contact = Contact.create(contact_params)
  end

  def update
  	@contacts = Contact.all    
    @contact.update_attributes(contact_params)
  end

  def destroy
    @contacts = Contact.all
    @contact.destroy
  end

  private

    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :title, :type, :phone, :ext, :fax, :email)
    end
end
