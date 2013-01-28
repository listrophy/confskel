source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'activeadmin', git: 'git://github.com/gregbell/active_admin.git'
gem 'meta_search', '>= 1.1.0.pre'
gem 'carrierwave'
gem 'fog'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller' # gives the error page from 'better_errors' a repl
end

group :test, :development do
  gem 'rspec-rails'
  gem 'turnip'
  gem 'capybara'
  gem 'pry-rails'
  gem 'launchy'
end

group :production do
  gem 'pg'
end
