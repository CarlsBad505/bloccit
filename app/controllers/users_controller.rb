class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    if @user.confirm.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      create_session(@user)
      redirect_to root_path # Will probably change this later once show view is created '@user'
    else
      flash[:error] = "Something went wrong, please try again."
      render :new
    end
  end
  
  def confirm
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
  end
end
