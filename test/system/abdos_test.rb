require "application_system_test_case"

class AbdosTest < ApplicationSystemTestCase
  setup do
    @abdo = abdos(:one)
  end

  test "visiting the index" do
    visit abdos_url
    assert_selector "h1", text: "Abdos"
  end

  test "should create abdo" do
    visit abdos_url
    click_on "New abdo"

    fill_in "Exercise", with: @abdo.exercise_id
    fill_in "Nb", with: @abdo.nb
    fill_in "User", with: @abdo.user_id
    click_on "Create Abdo"

    assert_text "Abdo was successfully created"
    click_on "Back"
  end

  test "should update Abdo" do
    visit abdo_url(@abdo)
    click_on "Edit this abdo", match: :first

    fill_in "Exercise", with: @abdo.exercise_id
    fill_in "Nb", with: @abdo.nb
    fill_in "User", with: @abdo.user_id
    click_on "Update Abdo"

    assert_text "Abdo was successfully updated"
    click_on "Back"
  end

  test "should destroy Abdo" do
    visit abdo_url(@abdo)
    click_on "Destroy this abdo", match: :first

    assert_text "Abdo was successfully destroyed"
  end
end
