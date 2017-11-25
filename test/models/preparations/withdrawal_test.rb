require 'test_helper'

class Preparation::WithdrawalTest < ActiveSupport::TestCase
  it 'answers with json' do
    withdrawal = Preparation::Withdrawal.new(answer: 'I want Danish money', field: 'currency')

    json = withdrawal.to_json
    
    assert_equal 'currency', json[:field]
    assert_equal 'DKK', json[:value]
    assert_equal 'amount', json[:next_question]
  end

end