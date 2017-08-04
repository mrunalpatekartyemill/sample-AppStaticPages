require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Ruby on Rails Tutorials Sample App Static Pages"
  end
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title" , "Home | Ruby on Rails App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title","Help | Ruby on Rails App"
  end

  test "should get to about" do
    get :about
    assert_response :success
    assert_select "title" , "About | Ruby on Rails App"
  end

end


