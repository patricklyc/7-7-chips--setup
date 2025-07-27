source 'https://rubygems.org'

ruby "3.3.9"
gem "rails", "~> 7.1"

gem 'sass-rails', '~> 5.0.3'
gem 'uglifier', '>= 2.7.1'

gem 'jquery-rails'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'byebug'
  gem 'database_cleaner'
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'

  gem 'pry'
  gem 'pry-byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4'
end

group :production do
  gem 'pg', '~> 1.5'
  gem 'rails_12factor'
end

# Tooling
gem "ruby-lsp", require: false, group: :development
gem "standard", group: :development
gem "standard-rails", require: false, group: :development
gem "erb-formatter", group: :development
