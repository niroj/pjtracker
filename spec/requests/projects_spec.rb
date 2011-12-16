require 'spec_helper'

describe "Projects" do
  it "should be created by user after signing in" do

    visit new_project_path

    page.should have_content("You need to sign in or sign up before continuing.")

  end
  describe "signed in user" do
    before do
      user = Factory(:user)
      login(user)
    end

    it "should allow authenticated user to create project" do

      visit new_project_path
      fill_in "Name", :with => "CloudFactory"
      fill_in "Status", :with => "In Progress"
      fill_in "Description", :with => "2011-12-15"

      select('2007', :from => 'project_start_date_1i')
      select('December', :from => 'project_start_date_2i')
      select('16', :from => 'project_start_date_3i')

      select('2008', :from => 'project_deadline_1i')
      select('December', :from => 'project_deadline_2i')
      select('16', :from => 'project_deadline_3i')
      select('5', :from => 'project_deadline_4i')
      select('45', :from => 'project_deadline_5i')

      check('project_user_id_')

      click_button "Create Project"

      page.should have_content("Project was successfully created.")

    end

    it "should not allow authenticated user to create project without adding user" do

      visit new_project_path
      fill_in "Name", :with => "CloudFactory"
      fill_in "Status", :with => "In Progress"
      fill_in "Description", :with => "2011-12-15"

      select('2007', :from => 'project_start_date_1i')
      select('December', :from => 'project_start_date_2i')
      select('16', :from => 'project_start_date_3i')

      select('2008', :from => 'project_deadline_1i')
      select('December', :from => 'project_deadline_2i')
      select('16', :from => 'project_deadline_3i')
      select('5', :from => 'project_deadline_4i')
      select('45', :from => 'project_deadline_5i')

      click_button "Create Project"

      page.should have_content("Please select atleast one user")

    end

  end

end
