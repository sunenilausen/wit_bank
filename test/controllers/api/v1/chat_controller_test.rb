require 'test_helper'

class Api::V1::ChatControllerTest < ActionDispatch::IntegrationTest
  # it 'should respond' do
  #   get api_v1_chat_message_url
  #   assert_response :error
  # end

  it 'should respond with a question' do
    get api_v1_chat_message_url params: {answer: 'I want Danish money', errand: 'withdrawal', question: 'currency_type'}

    json_response = JSON.parse(response.body)

    assert_equal 'DKK', json_response['currency_type']
  end
end
