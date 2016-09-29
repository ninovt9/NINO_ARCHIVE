class UsersController < ApplicationController
 

  def show
    flash[:success] = "注册成功！"
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "注册成功！"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :company,
                                 :telephone, :email,
                                 :password, :password_confirmation)
  end
  

end
