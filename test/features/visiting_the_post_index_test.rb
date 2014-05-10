require "test_helper"

feature "Visiting The Post Index" do
  scenario "with exsisting posts" do
    # Given exsisting posts (created in fixtures dir)
    # When I vist /posts
    visit posts_path

    # Then the exsisting posts should be loaded
    page.text.must_include "Becoming a Code Fellow"
    page.text.must_include "Code Rails"
  end
end
