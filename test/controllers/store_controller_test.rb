require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

   test "should show product" do
    get :show, id: @product
    assert_response :success
  end
end
