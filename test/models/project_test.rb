require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    
    @project = Project.new(
                name: "宏大奥林匹克花园",
                position: "牡丹江市江南开发区",
                developer: "牡丹江市宏大房地产开发有限公司"
        )

  end

  test "should be valid" do
    assert @project.valid?
  end

  test "name should be present and not be too long" do
    @project.name = ""
    assert_not @project.valid?
    @project.name = "a" * 256
    assert_not @project.valid?
  end
  
  test "position should be present and not be too long" do
    @project.position = ""
    assert_not @project.valid?
    @project.position = "a" * 256
    assert_not @project.valid?
  end

  test "developer should be present and not be too long" do
    @project.developer = ""
    assert_not @project.valid?
    @project.developer = "a" * 256
    assert_not @project.valid?
  end
  
  test "name should be unique" do
    duplicate_project = @project.dup 
    @project.save
    assert_not duplicate_project.valid?
  end

end
