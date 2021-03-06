class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to @user, notice: "User was successfully created"
  	else
  		render "new"
  	end
  end

  def edit
  end

  def show
  	@user = User.find(params[:id])
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email)
  end

end
