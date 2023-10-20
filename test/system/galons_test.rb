require "application_system_test_case"

class GalonsTest < ApplicationSystemTestCase
  setup do
    @galon = galons(:one)
  end

  test "visiting the index" do
    visit galons_url
    assert_selector "h1", text: "Galons"
  end

  test "should create galon" do
    visit galons_url
    click_on "New galon"

    fill_in "Image", with: @galon.image
    fill_in "Name", with: @galon.name
    click_on "Create Galon"

    assert_text "Galon was successfully created"
    click_on "Back"
  end

  test "should update Galon" do
    visit galon_url(@galon)
    click_on "Edit this galon", match: :first

    fill_in "Image", with: @galon.image
    fill_in "Name", with: @galon.name
    click_on "Update Galon"

    assert_text "Galon was successfully updated"
    click_on "Back"
  end

  test "should destroy Galon" do
    visit galon_url(@galon)
    click_on "Destroy this galon", match: :first

    assert_text "Galon was successfully destroyed"
  end
end
