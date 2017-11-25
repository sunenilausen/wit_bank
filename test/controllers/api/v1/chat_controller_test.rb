require 'test_helper'

class Api::V1::ChatControllerTest < ActionDispatch::IntegrationTest
  it 'should respond' do
    get api_v1_chat_message_url 
    assert_response :success
  end
end
