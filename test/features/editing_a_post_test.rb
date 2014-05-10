require "test_helper"

feature 'Editing A Post' do
  scenario 'submit updates to an exsisting post' do
    # Given an exsisting post
    Post.create(title: "Becoming a Code Fellow", body: "Means striving for                                            │1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
                                                        excellence.") 
    # When I clik edit and submit changed data
    click_on 'edit'
    fill_in title, with: 'Becoming a Web Developer'
    click_on 'Update Post'
    # Then the post is updated
    page.text.must_include 'Post was succesfully updated'
    page.text.must_include 'Web Developer'
  end
end
