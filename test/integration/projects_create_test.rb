require 'test_helper'

class ProjectsCreateTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:Nino)
  end

  test "valid create project information" do
    log_in_as(@user)
    get new_project_path
    assert_difference "Project.count",1 do
      post projects_path, params: { project: { name: "abc",
                                      position: "bac",
                                      developer: "acb" } }
    end
    follow_redirect!
    assert_template "projects/show"
    assert_equal Project.find_by(name: "abc").user_id, @user.id
  end
  
  test "create as logined" do
    log_in_as(@user)
    get new_project_path
    assert_template "projects/new"
  end
  
  test "create as non_logined" do
    get new_project_path
    follow_redirect!
    assert_template "sessions/new"
  end

end