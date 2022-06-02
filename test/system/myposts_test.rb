require "application_system_test_case"

class MypostsTest < ApplicationSystemTestCase
  setup do
    @mypost = myposts(:one)
  end

  test "visiting the index" do
    visit myposts_url
    assert_selector "h1", text: "Myposts"
  end

  test "should create mypost" do
    visit myposts_url
    click_on "New mypost"

    fill_in "Access", with: @mypost.access
    fill_in "Body", with: @mypost.body
    fill_in "Passcode", with: @mypost.passcode
    click_on "Create Mypost"

    assert_text "Mypost was successfully created"
    click_on "Back"
  end

  test "should update Mypost" do
    visit mypost_url(@mypost)
    click_on "Edit this mypost", match: :first

    fill_in "Access", with: @mypost.access
    fill_in "Body", with: @mypost.body
    fill_in "Passcode", with: @mypost.passcode
    click_on "Update Mypost"

    assert_text "Mypost was successfully updated"
    click_on "Back"
  end

  test "should destroy Mypost" do
    visit mypost_url(@mypost)
    click_on "Destroy this mypost", match: :first

    assert_text "Mypost was successfully destroyed"
  end
end
