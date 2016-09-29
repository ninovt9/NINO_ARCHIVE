module SessionsHelper
    
    
    
    #登入指定的用户
    def log_in(user)
        session[:user_id] = user.id
    end
    
    #返回当前登陆的用户
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    #如果用户已经登陆，返回true，否则返回false
    def logged_in?
        !current_user.nil?  #不为空
    end
    
    #退出当前用户
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
    
end
