require "test_helper"

feature "Visiting The Welcome Page" do
  scenario "The welcome page has my name on it" do
    #visit root_path
    raise 'Break to see if it breaks shipabble tests'
    page.must_have_content "CADBOT"
  end
end
