source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'rails-i18n'

gem 'pg', group: :production
gem 'sqlite3', group: [:development, :test]

# JavaScript
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'select2-rails'

gem 'slim-rails' # template engine

gem 'bourbon' # SASS-helper
gem 'neat'

gem 'simple_form'
gem 'nested_form'

# controller magic
gem 'inherited_resources'
gem 'rack-chuck', git: 'https://github.com/delicious-development/rack-chuck.git'

gem 'date_validator' # easy date validation

gem 'acts_as_list'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
  gem 'factory_girl_rails'
  gem 'ffaker'
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent', :require => false
  gem 'ruby_gntp'
end
