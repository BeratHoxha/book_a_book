require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create, usr_email: @user.name, password: "MyString"
    session[:user_id] = @user.id
    assert_response :success
    redirect_to store_path
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
