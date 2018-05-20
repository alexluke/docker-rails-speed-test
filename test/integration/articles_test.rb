require 'test_helper'

class ArticlesTest < ActionDispatch::IntegrationTest
    def setup
        @article = articles(:one)
    end

    test 'show articles' do
        visit '/articles'
        assert_content "MyString"
    end
end