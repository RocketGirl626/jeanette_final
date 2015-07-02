require 'rails_helper'

describe 'the delete category process' do
  it 'deletes a category' do
    test_category = Category.create(:name => 'JavaScript')
    visit category_path(test_category)
    click_on 'Delete'
    expect(page).to have_no_content 'JavaScript'
  end
end
