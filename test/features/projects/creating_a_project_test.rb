require "test_helper"

feature "Projects::CreatingAProject" do
  scenario "I want to create a new project" do
    visit projects_path
    click_on 'New Project'
    fill_in 'Name', with: 'Code Fellows Portfolio'
    fill_in 'Technologies used', with: 'Rails, ruby, foundation'
    click_on 'Create Project'
    page.text.must_include 'Project has been created'
  end
end
