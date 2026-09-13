require "test_helper"

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get articles" do
    get news_articles_url
    assert_response :success
  end
end
