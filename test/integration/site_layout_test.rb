require 'test_helper'


class SiteLayoutTest < ActionDispatch::IntegrationTest
  
    
    def setup
      @user = users(:Nino)
    end
  
    test "layout links" do
      get root_path
      assert_template 'static_pages/home'
      assert_select "a[href=?]", home_path
      assert_select "a[href=?]", help_path
      assert_select "a[href=?]", about_path
      assert_select "a[href=?]", contact_path
      
      log_in_as(@user)
      get users_path
      assert_template 'users/index'
    end
end
