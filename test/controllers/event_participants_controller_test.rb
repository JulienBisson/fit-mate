require "test_helper"

class EventparticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_participants_new_url
    assert_response :success
  end

  test "should get create" do
    get event_participants_create_url
    assert_response :success
  end

  test "should get edit" do
    get event_participants_edit_url
    assert_response :success
  end

  test "should get update" do
    get event_participants_update_url
    assert_response :success
  end
end
