require 'rails_helper'

describe "the add a Category process" do
  it "adds a new category" do
    visit categories_path
    click_link 'Add a New Skill Category'
    fill_in 'Name', :with => 'Java'
    # click_on 'Create Category'
    # expect(page).to have_content 'Categories'
  end
  # it "gives an error when no data is entered into form fields" do
  #   visit new_category_path
  #   click_on 'Create Category'
  #   expect(page).to have_content 'errors'
  # end

end
