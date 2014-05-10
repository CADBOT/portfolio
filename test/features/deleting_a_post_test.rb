require "test_helper"

feature "Deleting A Post" do
  scenario "post is deleted with a click" do
    # Given an exsisting post
    visit posts_path
    post = posts(:cf)

    # When the delete link is clicked
    page.find('tr', text: post.title).click_on 'Destroy'

    # Then the post is deleted
    page.wont_have_content 'Becoming a Code Fellow'
  end
end
