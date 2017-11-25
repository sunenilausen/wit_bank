require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  it 'should respond with initial question' do
    get chat_message_url
    assert_response :success
  end
end
