require 'test_helper'



class ProjectsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:Nino)
  end
  
  test "should get new" do
    log_in_as(@user)
    get new_project_path
    assert_response :success
  end

end
