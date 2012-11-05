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
gem 'slim-rails'                
gem 'audited-activerecord'
gem 'cancan'
gem 'auto_strip_attributes'
gem 'browser'
gem 'paper_trail', :git => 'https://github.com/airblade/paper_trail.git'
gem 'rabl'
gem 'yajl-ruby'     # Required for RABL
gem 'd3_rails', :git => "https://github.com/logical42/d3_rails"

# Gems that are only required in Development and Test environments
group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'faker'
  gem 'launchy'
  gem 'letter_opener'
  gem 'quiet_assets'
  gem 'rack-mini-profiler'
  gem 'ruby-prof'
  gem 'test-unit'
end

# platforms :mswin do
#   gem 'thin', '1.2.11' 
# end
# 
# platforms :ruby do
#   gem 'thin'
# end
