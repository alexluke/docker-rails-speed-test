require 'test_helper'

class ArticlesJsTest < ActionDispatch::IntegrationTest
    def setup
      Capybara.current_driver = Capybara.javascript_driver
    end

    test 'show articles' do
        visit '/articles'
        assert_content "hello from js"
    end
end
