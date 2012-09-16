source 'https://rubygems.org'

gem 'rails'
gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'jquery-ui-rails'
  gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'simple_form'
gem 'nested_form'
gem 'slim-rails'                # This gem allows SLIM templates to be generated automatically via the rails generator
gem 'audited-activerecord'
gem 'cancan'
gem 'auto_strip_attributes'

# Gems that are only required in Development and Test environments
group :development, :test do
  gem 'capybara'
  gem 'launchy'
  gem 'letter_opener'
  gem 'quiet_assets'
end

gem 'capybara'
gem 'factory_girl_rails'
gem "rspec-rails"
gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
gem "guard-rspec"


# platforms :mswin do
#   gem 'thin', "1.2.11" 
# end
# 
# platforms :ruby do
#   gem 'thin'
# end
