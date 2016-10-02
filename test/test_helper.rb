ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  
  # 登入指定的用户
  def log_in_as(user)
    get login_path
    post login_path, params: { session:{ email: @user.email,
                                    password: 'password'} }
  end


  # 如果用户已登录，返回 true 
  def is_logged_in? 
    !session[:user_id].nil? 
  end 

end
