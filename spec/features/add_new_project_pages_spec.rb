require 'rails_helper'

describe "the add a project process" do
  it "adds a new project" do
    test_category = Category.create(:name => "Java", :description => 'blah')

    visit category_path(test_category)
    click_on 'Add a New Project'
    fill_in 'Name', :with => 'Treehouse Java'
    fill_in 'Description', :with => 'Polish Java Skills'
    fill_in 'Github', :with => 'bogus_github_link'
    click_on 'Create Project'
    expect(page).to have_content 'Projects'

  end

  it "gives an error when no data is entered into form fields" do
    test_category = Category.create(:name => "Java", :description => 'blah')
    visit category_path(test_category)
    click_on 'Add a New Project'
    fill_in 'Name', :with => ''
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end
