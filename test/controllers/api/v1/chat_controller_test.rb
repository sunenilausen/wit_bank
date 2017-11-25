require 'test_helper'

class Api::V1::ChatControllerTest < ActionDispatch::IntegrationTest
  it 'should respond with a relevant currency' do
    get api_v1_chat_message_url params: {answer: 'I want Danish money', errand: 'withdrawal', field: 'currency'}

    json_response = JSON.parse(response.body)

    assert_equal 'DKK', json_response['value']
  end

  it 'should give response with a question' do
    get api_v1_chat_message_url params: {answer: 'I want Danish money', errand: 'withdrawal', field: 'currency'}

    json_response = JSON.parse(response.body)

    assert_equal 'amount', json_response['next_question']
  end

  it 'should give response with a field' do
    get api_v1_chat_message_url params: {answer: 'I want Danish money', errand: 'withdrawal', field: 'currency'}

    json_response = JSON.parse(response.body)

    assert_equal 'currency', json_response['field']
  end
end
