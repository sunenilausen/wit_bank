ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start 'rails'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'



class ActiveSupport::TestCase

  def fixture object
    File.read(File.expand_path("../fixtures/#{object}.json", __FILE__))
  end
  # Add more helper methods to be used by all tests here...
end
