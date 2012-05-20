require 'requests/requests_helper'

feature "Admin uses list manager", %q{
  In order to allow easy management of list data
  As an admin
  I can manage lists in a manager
} do

  background do
  end

  scenario "admin views current lists" do
    visit '/lists'
    page.should have_content 'Welcome to the Lists Manager'
  end

  scenario "admin creates a new list" do
    visit '/lists'
    click_link 'New List'
    page.should have_content 'Create New List'
  end
end
