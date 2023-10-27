require "test_helper"

class AbdosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abdo = abdos(:one)
  end

  test "should get index" do
    get abdos_url
    assert_response :success
  end

  test "should get new" do
    get new_abdo_url
    assert_response :success
  end

  test "should create abdo" do
    assert_difference("Abdo.count") do
      post abdos_url, params: { abdo: { exercise_id: @abdo.exercise_id, nb: @abdo.nb, user_id: @abdo.user_id } }
    end

    assert_redirected_to abdo_url(Abdo.last)
  end

  test "should show abdo" do
    get abdo_url(@abdo)
    assert_response :success
  end

  test "should get edit" do
    get edit_abdo_url(@abdo)
    assert_response :success
  end

  test "should update abdo" do
    patch abdo_url(@abdo), params: { abdo: { exercise_id: @abdo.exercise_id, nb: @abdo.nb, user_id: @abdo.user_id } }
    assert_redirected_to abdo_url(@abdo)
  end

  test "should destroy abdo" do
    assert_difference("Abdo.count", -1) do
      delete abdo_url(@abdo)
    end

    assert_redirected_to abdos_url
  end
end
