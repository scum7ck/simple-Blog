class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:sessions][:email].downcase)
    if admin && admin.authenticate(params[:sessions][:password])
      log_in admin
      redirect_to articles_path
    else
      flash[:danger] = 'invalid email/password combination' #not right
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
