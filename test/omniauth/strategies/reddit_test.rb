require 'test_helper'

class TestOmniAuthReddit < StrategyTestCase
  def test_it_has_the_correct_site
    assert_equal 'https://ssl.reddit.com', strategy.client.site
  end

  def test_it_has_the_correct_authorize_url
    assert_equal 'https://ssl.reddit.com/api/v1/authorize', strategy.client.authorize_url
  end

  def test_it_has_the_correct_token_url
    assert_equal 'https://ssl.reddit.com/api/v1/access_token', strategy.client.token_url
  end
end
