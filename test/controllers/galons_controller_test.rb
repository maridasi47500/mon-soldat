require "test_helper"

class GalonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galon = galons(:one)
  end

  test "should get index" do
    get galons_url
    assert_response :success
  end

  test "should get new" do
    get new_galon_url
    assert_response :success
  end

  test "should create galon" do
    assert_difference("Galon.count") do
      post galons_url, params: { galon: { image: @galon.image, name: @galon.name } }
    end

    assert_redirected_to galon_url(Galon.last)
  end

  test "should show galon" do
    get galon_url(@galon)
    assert_response :success
  end

  test "should get edit" do
    get edit_galon_url(@galon)
    assert_response :success
  end

  test "should update galon" do
    patch galon_url(@galon), params: { galon: { image: @galon.image, name: @galon.name } }
    assert_redirected_to galon_url(@galon)
  end

  test "should destroy galon" do
    assert_difference("Galon.count", -1) do
      delete galon_url(@galon)
    end

    assert_redirected_to galons_url
  end
end
