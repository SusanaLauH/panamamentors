class SessionsController < ApplicationController

  def new

  end


  def create
    #user = StudentUser.find_by(email: params[:session][:email].downcase)
    user = StudentUser.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy

  end
end
