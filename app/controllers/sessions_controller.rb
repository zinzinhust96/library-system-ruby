class SessionsController < ApplicationController
  skip_before_filter :verify_login

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path
    else 
      flash.now[:danger] = "Invalid email id or password. Please try again."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
