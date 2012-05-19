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
end
