require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should publish a draft article" do
    article = Article.create(published: false)

    article.publish

    assert article.published
  end

  test "should not save article without title" do
    article = Article.new(title: nil)
    
    assert_not article.save
  end
end
