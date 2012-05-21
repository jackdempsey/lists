require 'requests/requests_helper'

feature "Admin uses list manager", %q{
  In order to allow easy management of list data
  As an admin
  I can manage lists in a manager
} do

  background do
  end

  scenario "admin views current lists" do
    Lists::List.create(subject: "example list")
    visit '/lists'
    page.should have_content 'example list'
  end

  scenario "admin creates a new list" do
    visit '/lists'
    click_link 'New List'
    fill_in 'list_subject', with: "test list"
    fill_in 'list_body', with: "this is an example list object's body"
    click_button 'Create List'
    page.should have_content 'test list'
    page.should have_content "this is an example list object's body"
  end

  scenario "admin creates a new list with items associated with it" do
    visit '/lists/lists/new'
    fill_in 'list_subject', with: "list with items"
    fill_in 'list_body', with: "this is an example list object's body"
    fill_in 'list_list_items_attributes_0_subject', with: 'list item subject'
    fill_in 'list_list_items_attributes_0_body', with: 'list item body'
    click_button 'Create List'
    page.should have_content 'list with items'
    page.should have_content "list item subject"
    page.should have_content "list item body"
  end
end
