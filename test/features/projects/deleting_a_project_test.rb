require "test_helper"
feature "As a site owner, I want to be able to delte projects" do
  scenario "deleting a project" do
    # Given a project with name 'Old Project'
    visit projects_path
    project = projects(:old)
    # When I click on Destroy
    page.find('tr', text: project.title).click_on 'Destroy'
    # I will see the delete page

  end
end
