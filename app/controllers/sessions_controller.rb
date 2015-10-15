class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      create_session(user)
      flash[:notice] = "Welcome #{user.name}!"
      redirect_to root_path # Probably going to change to #show later
    else
      flash[:error] = "Invalid email/password combination."
      render :new
    end
  end
  
  def destroy
    destroy_session(current_user)
    flash[:notice] = "You've been signed out successfully."
    redirect_to root_path
  end
end
