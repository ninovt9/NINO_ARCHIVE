source 'https://rubygems.org'


gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'bootstrap-sass', '3.3.6'
gem 'rails-controller-testing'

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.11'
gem 'faker', '~> 1.6.3'
gem 'will_paginate',  '~> 3.1.0'
gem 'bootstrap-will_paginate',   '~> 0.0.10'

gem 'minitest', group: :test
gem 'minitest-reporters', group: :test

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3', '1.3.11'
  gem 'byebug', '9.0.0', platform: :mri 
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do 
  gem 'pg', '0.18.4' 
end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
