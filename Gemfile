source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootstrap-sass'
gem 'devise'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'letter_opener', group: :development
gem 'aasm'
gem 'figaro'
gem 'fog'
gem "seo_helper"
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'ransack'
gem 'braintree'
gem 'social-share-button'
gem 'masonry-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
  gem "capistrano"
  gem "capistrano-rvm"
  gem "capistrano-rails"
end
