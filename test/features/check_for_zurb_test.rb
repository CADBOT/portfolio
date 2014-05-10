require "test_helper"

feature "CheckForZurb" do
  scenario "Zurb should be installed" do
    visit root_path
    #TODO: Figure out a more robust test
    page.must_have_css 'nav.top-bar'
  end
end
