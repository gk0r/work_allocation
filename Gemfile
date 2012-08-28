source 'https://rubygems.org'

gem 'rails'
gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'jquery-ui-rails'
  # gem 'bootstrap-sass'                                                                              # This repo is very slow getting Twitter Bootstrap 2.1 merged into the master.
  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'      # Use this gem when developing on my Mac
#  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git',    # Use this gem when deploying on Windows platform
#                                 :branch => 'static'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'simple_form'
gem 'nested_form'
gem 'slim-rails'                # This gem allows SLIM templates to be generated automatically via the rails generator
gem 'audited-activerecord'
gem 'cancan'
gem 'rails_admin'

# Gems that are only required in Development and Test environments
group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'letter_opener'
  gem 'quiet_assets'
end

# Following three are included to use Red Carpet and Markdown from http://railscasts.com/episodes/272-markdown-with-redcarpet
gem 'redcarpet'
gem 'albino'
gem 'nokogiri'

gem "devise"