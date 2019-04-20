source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

######## CORE GEMS

ruby '2.6.1'
gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0' # Dabase
gem 'puma', '~> 3.11' # App Server

######## OTHER GEMS

gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'bootstrap', '~> 4.3' # Use bootstrap for front-end stuff
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'haml', '~> 5.0' # Enable HAML views
gem 'haml-rails', '~> 2.0' # Replace the default generators to generate HAML
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails', '~> 4.3.3' # Used for bootstrap
gem 'mini_magick', '~> 4.8' # Use ActiveStorage variant
gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

######## ENVIRONMENT GEMS

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails-erd' # Generate UML from the schema
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :production, :stage do
  # Any prod gems should also be loaded in stage, since stage should mimic prod
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
