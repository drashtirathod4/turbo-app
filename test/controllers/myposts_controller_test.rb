require "test_helper"

class MypostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mypost = myposts(:one)
  end

  test "should get index" do
    get myposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mypost_url
    assert_response :success
  end

  test "should create mypost" do
    assert_difference("Mypost.count") do
      post myposts_url, params: { mypost: { access: @mypost.access, body: @mypost.body, passcode: @mypost.passcode } }
    end

    assert_redirected_to mypost_url(Mypost.last)
  end

  test "should show mypost" do
    get mypost_url(@mypost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mypost_url(@mypost)
    assert_response :success
  end

  test "should update mypost" do
    patch mypost_url(@mypost), params: { mypost: { access: @mypost.access, body: @mypost.body, passcode: @mypost.passcode } }
    assert_redirected_to mypost_url(@mypost)
  end

  test "should destroy mypost" do
    assert_difference("Mypost.count", -1) do
      delete mypost_url(@mypost)
    end

    assert_redirected_to myposts_url
  end
end
