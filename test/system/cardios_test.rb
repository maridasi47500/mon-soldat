require "application_system_test_case"

class CardiosTest < ApplicationSystemTestCase
  setup do
    @cardio = cardios(:one)
  end

  test "visiting the index" do
    visit cardios_url
    assert_selector "h1", text: "Cardios"
  end

  test "should create cardio" do
    visit cardios_url
    click_on "New cardio"

    fill_in "Duree", with: @cardio.duree
    fill_in "Exercise", with: @cardio.exercise_id
    fill_in "User", with: @cardio.user_id
    click_on "Create Cardio"

    assert_text "Cardio was successfully created"
    click_on "Back"
  end

  test "should update Cardio" do
    visit cardio_url(@cardio)
    click_on "Edit this cardio", match: :first

    fill_in "Duree", with: @cardio.duree
    fill_in "Exercise", with: @cardio.exercise_id
    fill_in "User", with: @cardio.user_id
    click_on "Update Cardio"

    assert_text "Cardio was successfully updated"
    click_on "Back"
  end

  test "should destroy Cardio" do
    visit cardio_url(@cardio)
    click_on "Destroy this cardio", match: :first

    assert_text "Cardio was successfully destroyed"
  end
end
