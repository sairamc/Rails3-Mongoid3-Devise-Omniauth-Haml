source "http://gemcutter.org"
source "http://rubygems.org"
ruby '1.9.3'

# Rails Framework gems
gem 'rack'
gem 'rails', "3.2.8"

# Datebase related gems
gem 'mongoid'
gem 'bson_ext'

# Authentication gems
gem 'devise', :git => "git://github.com/plataformatec/devise.git"
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'nifty-generators'
gem 'oa-openid'

# Views related gems
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

# Assets, Java Scripts and Haml
gem 'jquery-rails'
gem "haml", ">= 3.1.6"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "quiet_assets", ">= 1.0.1", :group => :development

# Webserver for development to remove warnings
gem 'thin'

# Debugging purposes 
group :development do
	gem 'debugger'
	gem "rails-footnotes", ">= 3.7", :group => :development
	gem 'tunnlr_connector', :require => 'tunnlr' 
end

# Test Gems
gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test]
gem "database_cleaner", ">= 0.8.0", :group => :test
gem "mongoid-rspec", ">= 1.4.6", :group => :test
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "launchy", ">= 2.1.2", :group => :test
gem "capybara", ">= 1.1.2", :group => :test