require 'test_helper'

class PreparationFactoryTest < ActiveSupport::TestCase
  it 'creates a withdrawal' do
    Wit.any_instance.expects(:message).with("I want Danish money").returns(JSON.parse(fixture('danish_money')))
    
    assert_equal Preparation::Withdrawal, PreparationFactory.create('withdrawal', answer: 'I want Danish money', field: 'currency').class
  end
end