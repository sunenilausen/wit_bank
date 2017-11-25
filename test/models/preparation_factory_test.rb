require 'test_helper'

class PreparationFactoryTest < ActiveSupport::TestCase
  it 'creates a withdrawal' do
    assert_equal Preparation::Withdrawal, PreparationFactory.create('withdrawal', answer: 'I want Danish money', question: 'currency').class
  end
end