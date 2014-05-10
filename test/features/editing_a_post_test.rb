require "test_helper"

feature 'Editing A Post' do
  scenario 'submit updates to an exsisting post' do
    # Given an exsisting post
    post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for                                            │1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
                                                               excellence.") 
    visit post_path(post) 

    # When I clik edit and submit changed data
    click_on 'Edit'
    fill_in 'Title', with: 'Becoming a Web Developer'
    click_on 'Update Post'
    
    # Then the post is updated
    page.text.must_include 'Post was successfully updated'
    page.text.must_include 'Web Developer'
  end
end
