source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'rails-i18n'
gem 'sqlite3'

# JavaScript
gem 'jquery-rails'

gem 'slim-rails' # template engine

gem 'bourbon' # SASS-helper

# controller magic
gem 'inherited_resources'
gem 'rack-chuck', git: 'https://github.com/delicious-development/rack-chuck.git'

gem 'date_validator' # easy date validation

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
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent', :require => false
  gem 'ruby_gntp'
end
