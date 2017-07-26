source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# =========================
#     RAILS DEFINITION
# =========================
gem 'rails', '~> 5.1.1'

# =========================
#    DATABASE DEFINITION
# =========================
gem 'pg', '~> 0.18'

# =========================
#          PUMA
# =========================
gem 'puma', '~> 3.7'

# =========================
#         FRONT GEMS
# =========================
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'rails-assets-sweetalert2', '~> 5.1.1', source: 'https://rails-assets.org'
gem 'sweet-alert2-rails'
gem 'intercooler'
gem 'better_errors'
gem 'binding_of_caller'
gem 'jquery-rails'
gem "react-rails"
gem 'rack-pjax'
gem 'nokogiri'
gem 'gentelella-rails'
gem "font-awesome-rails"
gem "select2-rails"

# =========================
#        BACK GEMS
# =========================
gem 'apipie-rails'
gem 'omniauth-facebook' # Facebook authentication
gem "koala", "~> 1.10.0rc" # Facebook API
gem 'rest-client'
gem "paranoia", "~> 2.2"
gem 'paperclip', :git=> 'https://github.com/thoughtbot/paperclip', :ref => '523bd46c768226893f23889079a7aa9c73b57d68'
gem 'bcrypt'
gem 'bson_ext'
gem 'devise'
gem 'mongoid'
gem 'will_paginate_mongoid'
gem "mongo_session_store-rails3"
gem 'mongoid_paranoia'
gem "mongoid-paperclip", :require => "mongoid_paperclip"
gem 'aws-sdk', '< 2.0'


# =========================
#   ENVIRONMENT GROUP DEF
# =========================
group :development, :test do
  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :development do
  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]