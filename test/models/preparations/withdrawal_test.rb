require 'test_helper'

class Preparation::WithdrawalTest < ActiveSupport::TestCase
  it 'has a question' do
    withdrawal = Preparation::Withdrawal.new(answer: 'I want Danish money', field: 'currency')

    assert_equal 'currency', withdrawal.field
    assert_equal 'DKK', withdrawal.value
    assert_equal 'amount', withdrawal.next_question
  end

end