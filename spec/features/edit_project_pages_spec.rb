# describe "the edit a project process" do
#
#   it "edits a project" do
#     user = FactoryGirl.create(:user)
#     visit "/"
#     expect(page).to have_content("Login")
#     click_link "Sign In"
#     fill_in 'Email', :with => 'raven@raven.com'
#     fill_in 'Password', :with => '66666666'
#     click_on 'Log in'
#     expect(page).to have_content("Signed in successfully.")
#
#     click_link 'Add a New Skill Category'
#     fill_in 'Name', :with => 'Java'
#     click_on 'Create Category'
#     expect(page).to have_content('Java')
#
#     click_link 'Java'
#     click_link 'Add a New Project'
#     fill_in 'Name', :with => 'Internship Project'
#     fill_in 'Description', :with => 'App using Java and JS'
#     fill_in 'Github', :with => 'https://github.com/RocketGirl626/Airbnb_day2.git'
#     click_on 'Create Project'
#     expect(page).to have_content('Internship Project')
#
#     click_on 'Edit Project'
#     fill_in 'Name', :with => 'Java Internship Project'
#     fill_in 'Description', :with => 'App using Java and JS'
#     fill_in 'Github', :with => 'https://github.com/RocketGirl626/Airbnb_day2.git'
#     click_on 'Update Project'
#     expect(page).to have_content('Java Internship Project')
#   end
#
# end
