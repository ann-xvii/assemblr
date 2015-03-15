# Welcome to General Assemblr 2.0!

General Assemblr 2.0 is a comprehensive social network geared toward the growing GA alumni and student community.

## Software used in General Assemblr 2.0

General Assemblr 2.0 runs on the following technologies:

* Rails 4.1.7
* Ruby 2.1.3
* PostgreSQL 9.4.0
* Bootstrap 3.3.2
* Circle CI for continuous integration
* Heroku for deployment
* RSpec, Factory Girl, and Capybara for testing


## Ruby Gems installed in General Assemblr 2.0

General Assemblr 2.0 uses the following gems:

* pg (postgres)
* thin (production server)
* better_errors (streamlined development)
* rails_12factor (heroku deployment)
* bootstrap-sass
* rspec-rails (testing)
* factory_girl_rails (testing)
* capybara (testing)
* carrierwave
* fog
* mini_magick
* poltergeist
* figaro
* shoulda-matchers
* rspec_junit_formatter

Run the following commands to use these gems
* To install to your machine, run

```
gem install name_of_gem
```

* To include the gem into your app
	* add each gem to your Gemfile, then
	* run `bundle install`

## Databases in General Assemblr 2.0

To set up the database in General Assemblr 2.0, please install PostgreSQL your local machine and include the pg gem in the app

In order to run the test suite, you'll need to create and migrate with the following commands:
```
rake db:create
rake db:migrate
```

## Running the test suite in General Assemblr 2.0
General Assemblr 2.0 uses RSpec, Factory Girl and Capybara for testing models, controllers and features.  Tests are broken down into specific files in the app's `spec` directory. 

* To run all tests, run:
	```
	bundle exec rspec
	```

* To run a specific set of tests, simply include the file path. Here is an example for the relationships_controller_spec.rb:
	```
	bundle exec rspec spec/controllers/relationships_controller_spec.rb
	```

## Thanks for visiting General Assemblr 2.0!

Feel free to ask questions or send pull requests. Donations can be made in hummus or green tea. Enjoy!






