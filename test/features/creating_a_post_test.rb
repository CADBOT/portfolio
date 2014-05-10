require "test_helper"

feature "Creating A Post" do
  scenario "submit form data to create a new post" do
    # Given a completed form
    visit new_post_path
    fill_in 'title', with: 'Code Rails'
    fill_in 'body', with: 'This is how I learned to make rails apps'
    # When I submit the form
    click_on 'Create Post'
    # Then a new post should be created and displayed
    page.text.must_include 'Post was succesfully created'
    page.text.must_include 'how I learned to make rails apps'
  end
end
