require 'test_helper'

class MessagesOngControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get messages_ong_index_url
    assert_response :success
  end

  test "should get new" do
    get messages_ong_new_url
    assert_response :success
  end

end
