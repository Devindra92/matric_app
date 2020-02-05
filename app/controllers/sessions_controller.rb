class SessionsController < ApplicationController
  
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password]) #log in and redirects to show page
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to root_path
      else
        message = "Account not activated."
        message += "Check your email to activate your account."
        flash.now[:message] = message
        redirect_to root_url
      end
    else
        flash.now[:danger] = "Invalid email/password combination"
        render 'new'
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
