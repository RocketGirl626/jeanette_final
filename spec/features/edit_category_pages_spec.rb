require 'rails_helper'

describe "the edit category process" do

  it "updates a category" do
    user = FactoryGirl.create(:user)
    visit '/'
    expect(page).to have_content("Login")
    click_link "Login"
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_on 'Log in'
    expect(page).to have_content("Signed in successfully.")
    click_on 'Add a New Skill Category'
    fill_in 'Name', :with => 'Ruby'
    click_on 'Create Category'
    click_on 'Ruby'
    click_on 'Edit Category'
    fill_in 'Name', :with => 'Ruby on Rails'
    click_on 'Update Post'
    expect(page).to have_content 'Ruby on Rails'
  end

  it "gives an error when no data is entered into form fields" do
    test_category = Category.create(:name => 'Ruby on Rails')
    visit edit_category_path(test_category)
    fill_in 'Name', :with => ''
    click_on 'Update Category'
    expect(page).to have_content 'errors'
  end
end
