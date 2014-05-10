require "test_helper"

feature "Visiting The Post Index" do
  scenario "with exsisting posts" do
    # Given exsisting posts
    Post.create(title: "Becoming a Code Fellow", body: "Means striving for
                        excellence.")
    # When I vist /posts
    visit posts_path

    # Then the exsisting posts should be loaded
    page.text.must_include "Becoming a Code Fellow"
  end
end
