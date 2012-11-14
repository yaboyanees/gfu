source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'bootstrap-sass', '2.0.4'
gem 'bcrypt-ruby'
gem 'devise'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongo'
#gem 'bson_ext' # probably need this for production
gem 'mongoid'
gem 'omniauth'
gem 'oauth2'
gem 'omniauth-facebook'

group :development, :test do
  gem 'sqlite3' # todo: get a real db and move to all groups
  gem 'rspec-rails'
  gem 'capybara'
end

group :test do
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
  gem 'factory_girl_rails', '4.1.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  gem 'jquery-rails'
  gem 'jquery-ui-rails'
  gem 'jquery-modal-rails', :git => 'git://github.com/dei79/jquery-modal-rails.git'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
