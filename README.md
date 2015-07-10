Application:  Jeanette's Professional Profile - Part 2
Author: Jeanette Fairless
Description:  Adds authentication and authorization features to the
week one version.  Use SimpleCov and FactoryGirl for integration
testing. Deploy to Heroku.

Application Setup:

Start Postgres

In project directory run:
- rake db:create
- rake db:migrate
- rake db:test:prepare

Known Issues:  I have implemented the authentication successfully.  But,
when I try to create Posts, I get the PostController#create error
"post_params" undefined local variable.  Can't seem to solve it.  Error
line (#13) in controller is:

- @post = @user.posts.new(post_params)

Testing: 15 tests with 2 failing.  93.41% coverage.

Heroku Link:  https://git.heroku.com/fast-taiga-1745.git
