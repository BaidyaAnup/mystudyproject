class ContactsController < ApplicationController

	before_action :set_contact, only: [:update, :destroy]

  def new
  	@user = User.find(params[:user_id])
  	# @contact = @user.emergencies.new
  	# @contact = @user.friends.new
  	@contact = @user.send(set_type.pluralize).new
  end

  def edit
  end

  def create
  	@user = User.find(params[:user_id])
  	# @contact = @user.emergencies.new(contact_params)
  	# @contact = @user.friends.new(contact_params)
  	@contact = @user.send(set_type.pluralize).new(contact_params)

  	if @contact.save
  		redirect_to @user, notice: "#{params[:type]} Contact was successfully created"
  	else
  		render :new
  	end
  end

  def update
  	if @contact.update(contact_params)
  		redirect_to @user, notice: "#{ params[:type]} Contact was successfully updated"
  	else
  		render :edit
  	end
  end

  def destroy
  	@contact.destroy
  end

  private

  def set_type
  	case params[:type]
  	when 'Friend'
  		'friend'
  	when 'Emergency'
  		'emergency'
  	end
  end

  def set_contact
  	@user = User.find(params[user_id])
  	# @contact = @user.emergencies.find(params[:id])
  	# @contact = @user.friends.find(params[:id])
  	@contact = @user.send(set_type.pluralize).find(params[:id])
  end

  def contact_params
  	params.require(set_type.to_sym).permit(:type, :first_name, :last_name, :phone_number, :city, :state, :zip, :birthday)
  end

end
