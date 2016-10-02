module SessionsHelper
    
=begin
    users part
=end
    
    #登入指定的用户
    def log_in(user)
        session[:user_id] = user.id
    end
    
    # 如果指定用户是当前用户，返回 true
    def current_user?(user)
        user == current_user
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
    
    # 重定向到存储的地址或者默认地址
    def redirect_back_or(default)
        redirect_to(session[:forwarding_url] || default)
        session.delete(:forwarding_url)
    end
    
    # 存储后面需要使用的地址
    def store_location
        session[:forwarding_url] = request.original_url if request.get?
    end
    
=begin
    project part
=end
    
end
