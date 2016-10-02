require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
 
 
  def setup
    @user = users(:Nino)
  end

  
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: {name: "",
                                             company: "2131d32af",
                                             telephone: "12314513",
                                             email: "123",
                                             password: "foo",
                                             password_confirmation: "bar" } }
    assert_template 'users/edit'
  end
  
  test "successful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    name = "Foo Bar"
    company = "FM2010"
    telephone = "12345631231"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: {name: name,
                                             company: company,
                                             telephone: telephone,
                                             email: email,
                                             password: "",
                                             password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
    assert_equal email, @user.email
  end
  
  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    
  end
 
end
