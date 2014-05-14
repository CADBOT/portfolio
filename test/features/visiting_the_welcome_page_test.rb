require "test_helper"

feature "Visiting The Welcome Page" do
  scenario "The welcome page has my name on it" do
    visit root_path
    page.must_have_content "CADBOT"
    page.must_have_content "This should break it"
  end
end
