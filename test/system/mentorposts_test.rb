require "application_system_test_case"

class MentorpostsTest < ApplicationSystemTestCase
  setup do
    @mentorpost = mentorposts(:one)
  end

  test "visiting the index" do
    visit mentorposts_url
    assert_selector "h1", text: "Mentorposts"
  end

  test "should create mentorpost" do
    visit mentorposts_url
    click_on "New mentorpost"

    click_on "Create Mentorpost"

    assert_text "Mentorpost was successfully created"
    click_on "Back"
  end

  test "should update Mentorpost" do
    visit mentorpost_url(@mentorpost)
    click_on "Edit this mentorpost", match: :first

    click_on "Update Mentorpost"

    assert_text "Mentorpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Mentorpost" do
    visit mentorpost_url(@mentorpost)
    click_on "Destroy this mentorpost", match: :first

    assert_text "Mentorpost was successfully destroyed"
  end
end
