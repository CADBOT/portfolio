require "test_helper"

feature "Visiting The Welcome Page" do
  scenario "The welcome page has my name on it" do
    visit 'http://CADBLOG.tk'
    page.must_have_content "CADBOT"
  end
end
