source 'https://rubygems.org'

ruby '2.1.3'
gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.9'
gem 'faker', '~> 1.4.3'
gem 'will_paginate', '~> 3.0.7'
gem 'bootstrap-will_paginate', '~> 0.0.10'
gem 'rails_serve_static_assets'
gem 'quiet_assets', group: :development

# add image upload capability
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.1.0'
gem 'rmagick', '~> 2.13.4'
gem 'fog', '~> 1.28.0'
gem 'figaro'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'better_errors'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'shoulda-matchers', require: false
  gem 'pry'
  gem 'rspec-rails', '~> 3.0'
end

gem 'factory_girl_rails'
gem 'capybara'
gem 'database_cleaner', '~> 1.4.0'
gem 'rspec_junit_formatter', :github => 'circleci/rspec_junit_formatter', group: :test

# gem 'thin', group: :production

group :production do
 gem 'puma', '~> 2.11.1'
 gem 'rails_12factor'
end
