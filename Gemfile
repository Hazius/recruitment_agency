################################################################################
# Updated according to:
#   - Michael Hartl 3-rd Edition
#   - BKC standards
###############################################################################
source 'https://rubygems.org'
ruby "2.2.1"

gem 'rails',        '4.2.1'                   # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'mysql2'                                  # Use mysql as the database for Active Record
gem 'sass-rails',   '~> 5.0'                  # Use SCSS for stylesheets
gem 'uglifier',     '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'                # Use CoffeeScript for .coffee assets and views
gem 'therubyracer', platforms: :ruby          # See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'jquery-rails'                            # Use jquery as the JavaScript library
gem 'jquery-ui-rails'
# gem 'turbolinks'                              # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder',     '~> 2.0'                  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc',         '~> 0.4.0', group: :doc   # bundle exec rake doc:rails generates the API under doc/api.
gem 'bcrypt',       '~> 3.1.7'                # Use ActiveModel has_secure_password

#gem 'devise'                                  # https://github.com/plataformatec/devise
gem 'ckeditor'
gem 'haml-rails'                              # https://github.com/indirect/haml-rails
gem 'pundit'

#gem 'bkc_admin', '0.9.0', :git => "https://github.com/zhenyat/bkc_admin_gem.git"
#gem 'bkc_admin', :git => "https://github.com/zhenyat/bkc_admin_gem.git"

#gem 'capistrano-rails', group: :development   # Use Capistrano for deployment

# MH 3-rd Edition
gem 'faker'
#gem 'fog'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'bootstrap-sass'

group :development, :test do
  gem 'byebug'                                # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0'                 # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'spring'                                # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

# MH 3-rd Edition
group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace'
#  gem 'guard-minitest'
end

# SPA!
gem 'responders', '~> 2.0'
gem 'unicorn'
group :development do
  gem 'capistrano', '3.4.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  # gem 'capistrano-rbenv'
end
gem 'sprockets'

gem 'simple_form'
gem 'enum_help'
# gem 'client_side_validations', github: "DavyJonesLocker/client_side_validations", branch: "4-2-stable"
# gem 'client_side_validations-simple_form', github: "DavyJonesLocker/client_side_validations-simple_form", branch: "3-1-stable"
# gem 'judge'
# gem 'judge-simple_form'


gem "select2-rails"

gem 'breadcrumbs_on_rails'

# gem "twitter-bootstrap-rails"
gem "less-rails"
gem 'carrierwave'
gem 'mini_magick'
gem "cocoon"
gem 'ancestry'
gem "font-awesome-rails"
gem "acts_as_list"

gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'

source 'https://rails-assets.org' do
  gem 'rails-assets-moment'
  gem 'rails-assets-datetimepicker'
end

gem 'kaminari'
gem "audited-activerecord", "~> 4.0"
gem 'russian'