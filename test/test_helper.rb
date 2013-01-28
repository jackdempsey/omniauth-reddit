require 'bundler/setup'
require 'minitest/autorun'
require 'mocha/setup'
require 'rack/test'
require 'webmock/minitest'
require 'omniauth-reddit'
require 'omniauth/strategies/reddit'

class StrategyTestCase < MiniTest::Unit::TestCase
  def setup
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

class StrategyIntegrationTestCase < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.new {
      use OmniAuth::Builder do 
        provider :reddit, "id", "secret"
      end
      run lambda { |env| [404, {'Content-Type' => 'text/plain'}, [env.key?('omniauth.auth').to_s]] }
    }.to_app
  end
end
