require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "publishing an Article" do
    article = Article.create(published: false)
    visit article_path(article)
    assert_text "Published: false"

    click_on "Publish"

    assert_text "Published: true"
  end
end
