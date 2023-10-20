require "application_system_test_case"

class SoldiersTest < ApplicationSystemTestCase
  setup do
    @soldier = soldiers(:one)
  end

  test "visiting the index" do
    visit soldiers_url
    assert_selector "h1", text: "Soldiers"
  end

  test "should create soldier" do
    visit soldiers_url
    click_on "New soldier"

    fill_in "Dateofbirth", with: @soldier.dateofbirth
    fill_in "Galon", with: @soldier.galon_id
    fill_in "Image", with: @soldier.image
    fill_in "Name", with: @soldier.name
    fill_in "User", with: @soldier.user_id
    click_on "Create Soldier"

    assert_text "Soldier was successfully created"
    click_on "Back"
  end

  test "should update Soldier" do
    visit soldier_url(@soldier)
    click_on "Edit this soldier", match: :first

    fill_in "Dateofbirth", with: @soldier.dateofbirth
    fill_in "Galon", with: @soldier.galon_id
    fill_in "Image", with: @soldier.image
    fill_in "Name", with: @soldier.name
    fill_in "User", with: @soldier.user_id
    click_on "Update Soldier"

    assert_text "Soldier was successfully updated"
    click_on "Back"
  end

  test "should destroy Soldier" do
    visit soldier_url(@soldier)
    click_on "Destroy this soldier", match: :first

    assert_text "Soldier was successfully destroyed"
  end
end
