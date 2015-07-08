require 'rails_helper'

describe "the delete project process" do
  it "deletes a project" do
    test_category = Category.create(:name => "Java", :description => "blah blah")
    test_project = Project.create(:name => "Polish Java Skills", :description => 'Learn it', :github => "a;lskdjf;alsjd", :category_id => test_category.id)
    visit category_path(test_category,test_project)
    find("button a[href='/categories/#{test_category.id}/projects/#{test_project.id}']").click
    #click_on 'Delete Comment'
    expect(page).to have_no_content 'a comment'
  end
end
