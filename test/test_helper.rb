require 'bundler/setup'
require 'minitest/autorun'
require 'mocha/setup'
require 'omniauth-reddit'
require 'omniauth/strategies/reddit'

OmniAuth.config.test_mode = true

class StrategyTestCase < MiniTest::Unit::TestCase
  def setup
    @request = stub('Request')
    @request.stubs(:params).returns({})
    @request.stubs(:cookies).returns({})
    @request.stubs(:env).returns({})

    @client_id = 'rdt123'
    @client_secret = '53cr3tz'
  end

  def strategy
    @strategy ||= begin
      args = [@client_id, @client_secret, @options].compact
      OmniAuth::Strategies::Reddit.new(nil, *args).tap do |strategy|
        strategy.stubs(:request).returns(@request)
      end
    end
  end
end
