source 'https://rubygems.org'
# Ruby version
ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3' => Removing, used locally but not on Heroku

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
  gem 'twitter-bootstrap-rails'
  gem 'therubyracer'
  gem 'less-rails'
  # Use CoffeeScript for .js.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'



# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Heroku To enable features such as static asset serving and logging
gem 'rails_12factor', group: :production