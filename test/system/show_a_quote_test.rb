require "application_system_test_case"

class ShowAQuoteTest < ApplicationSystemTestCase
  test "visiting the Quote page" do
    visit '/'

    assert Quote.all.any? { |q| page.has_content? q }
  end
end
