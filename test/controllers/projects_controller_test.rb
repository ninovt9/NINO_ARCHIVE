require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_project_path
    assert_response :success
  end

end
