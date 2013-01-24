source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
#gem 'web-app-theme', '~> 0.8.0'
gem 'haml'
gem 'devise'
gem 'kaminari'
gem 'jquery-rails'
# gem 'simple_form'
# gem 'nifty-generators'

# authentication and authorization
gem "devise"
gem "cancan"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end
 
group :development, :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'haml-rails'
  gem 'hpricot'
  gem 'ruby_parser'
  gem 'capistrano', '~> 2.12.0'
  #gem 'web-app-theme', '~> 0.8.0'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem "factory_girl_rails"
  gem 'sqlite3'
end

group :test do
  gem 'shoulda-matchers'
  gem "factory_girl"
end

group :development do
  gem "rails3-generators", '~> 0.17.6'
  gem "hpricot"
  gem "ruby_parser"
  gem 'vmc'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'
