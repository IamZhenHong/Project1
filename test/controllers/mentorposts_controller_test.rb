require "test_helper"

class MentorpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorpost = mentorposts(:one)
  end

  test "should get index" do
    get mentorposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mentorpost_url
    assert_response :success
  end

  test "should create mentorpost" do
    assert_difference("Mentorpost.count") do
      post mentorposts_url, params: { mentorpost: {  } }
    end

    assert_redirected_to mentorpost_url(Mentorpost.last)
  end

  test "should show mentorpost" do
    get mentorpost_url(@mentorpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mentorpost_url(@mentorpost)
    assert_response :success
  end

  test "should update mentorpost" do
    patch mentorpost_url(@mentorpost), params: { mentorpost: {  } }
    assert_redirected_to mentorpost_url(@mentorpost)
  end

  test "should destroy mentorpost" do
    assert_difference("Mentorpost.count", -1) do
      delete mentorpost_url(@mentorpost)
    end

    assert_redirected_to mentorposts_url
  end
end
