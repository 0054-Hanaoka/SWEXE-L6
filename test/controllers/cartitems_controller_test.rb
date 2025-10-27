require "test_helper"

class CartitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cartitems_new_url
    assert_response :success
  end

  test "should get create" do
    get cartitems_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cartitems_destroy_url
    assert_response :success
  end
end
