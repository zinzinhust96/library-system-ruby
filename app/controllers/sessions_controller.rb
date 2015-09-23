class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to "/users"
    else 
      flash.now[:danger] = "Invalid email id or password. Please try again."
      render 'new'
    end
  end
end
