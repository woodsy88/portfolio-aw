source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0'
# Use postgresql as the database for Active Record

gem 'bundler', '2.0.2'

gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.3', '>= 4.3.5'

gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'meta_request'
  gem "better_errors"
  gem "binding_of_caller"

  gem 'rb-readline'
  gem 'solargraph'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'friendly_id', '~> 5.1.0'

gem 'devise', github: 'plataformatec/devise'

gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'popper_js', '~> 1.14', '>= 1.14.5'

gem 'woods_view_tool', '~> 0.1.0'

gem 'petergate', '~> 1.8'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'

gem 'kaminari', '~> 1.1', '>= 1.1.1'

gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

#allows u to create a d.env file - used for amazon aws
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'

gem 'cocoon', '~> 1.2', '>= 1.2.11'

gem 'gritter', '~> 1.2'

gem 'twitter', '~> 6.2'

gem 'redis', '~> 3.3.5'

#for markdown
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.2'

gem 'webpacker', '~> 4.0'

gem 'react-rails'

gem "awesome_print", require:"ap"

gem "pry-rails", group:"development"

gem 'ransack', '~> 2.1', '>= 2.1.1'

gem 'analytics-ruby', '~> 2.0.0', :require => 'segment/analytics'

gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'

gem 'mini_magick', '~> 4.8'

gem 'carrierwave-aws', github: 'sorentwo/carrierwave-aws'

gem "fog-aws"

gem "mime-types"

gem "chartkick"