require "test_helper"

class ForgotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forgot_index_url
    assert_response :success
  end
end
