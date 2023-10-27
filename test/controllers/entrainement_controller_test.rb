require "test_helper"

class EntrainementControllerTest < ActionDispatch::IntegrationTest
  test "should get aujourdhui" do
    get entrainement_aujourdhui_url
    assert_response :success
  end
end
