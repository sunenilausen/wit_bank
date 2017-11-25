require 'test_helper'

class Preparation::WithdrawalTest < ActiveSupport::TestCase
  it 'answers with json' do
    Wit.any_instance.expects(:message).with("I want Danish money").returns(JSON.parse(fixture('danish_money')))
    
    withdrawal = Preparation::Withdrawal.new(answer: 'I want Danish money', field: 'currency')

    json = withdrawal.to_json

    assert_equal 'currency', json[:field]
    assert_equal 'DKK', json[:value]
    assert_equal 'number', json[:next_question]
  end

  it 'has nil value when inelligible' do
    Wit.any_instance.expects(:message).with("jaldjg asdfasd").returns(JSON.parse(fixture('inelligible')))

    withdrawal = Preparation::Withdrawal.new(answer: 'jaldjg asdfasd', field: 'currency')

    json = withdrawal.to_json
    
    assert_equal nil, json[:value]
  end

end