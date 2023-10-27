require "test_helper"

class CardiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardio = cardios(:one)
  end

  test "should get index" do
    get cardios_url
    assert_response :success
  end

  test "should get new" do
    get new_cardio_url
    assert_response :success
  end

  test "should create cardio" do
    assert_difference("Cardio.count") do
      post cardios_url, params: { cardio: { duree: @cardio.duree, exercise_id: @cardio.exercise_id, user_id: @cardio.user_id } }
    end

    assert_redirected_to cardio_url(Cardio.last)
  end

  test "should show cardio" do
    get cardio_url(@cardio)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardio_url(@cardio)
    assert_response :success
  end

  test "should update cardio" do
    patch cardio_url(@cardio), params: { cardio: { duree: @cardio.duree, exercise_id: @cardio.exercise_id, user_id: @cardio.user_id } }
    assert_redirected_to cardio_url(@cardio)
  end

  test "should destroy cardio" do
    assert_difference("Cardio.count", -1) do
      delete cardio_url(@cardio)
    end

    assert_redirected_to cardios_url
  end
end
