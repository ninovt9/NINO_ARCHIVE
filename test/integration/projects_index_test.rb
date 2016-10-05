require 'test_helper'

class ProjectsIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:Nino)
    @project = projects(:Airlines)
    @project.user_id = @user.id
    
    @other_user = users(:Curry)
    @other_project = projects(:Oracle)
    @other_project.user_id = @other_user.id
  end
  
  test "index including create" do
    log_in_as(@user)
    get projects_path
    assert_select "a", text: "新建", count: 1
  end
  
  test "index as logined including own project" do
    log_in_as(@user)
    assert is_logged_in?
    get projects_path
    assert_template "projects/index"  
  
    assert_select "a", text: "AmericanAirlinesCenter", count: 1
    assert_select "a", text: "OracleArena", count: 1
    #assert_select "a", text: "删除", count: 1
  end
  
  test "index as non_logined" do
    get projects_path
    follow_redirect!
    assert_template "sessions/new"
  end

  

end
