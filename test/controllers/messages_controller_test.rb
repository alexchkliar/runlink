require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get all_messages" do
    get messages_all_messages_url
    assert_response :success
  end

  test "should get index" do
    get messages_index_url
    assert_response :success
  end

  test "should get create" do
    get messages_create_url
    assert_response :success
  end

end
