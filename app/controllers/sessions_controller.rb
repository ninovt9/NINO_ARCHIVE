class SessionsController < ApplicationController
  
  
=begin
    users part
=end
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #登入用户，然后重新定向到用户的资料界面
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' 
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  

    
=begin
    project part
=end

  def create_project
    
  end
  
  
end


