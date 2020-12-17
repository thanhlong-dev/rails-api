source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "active_model_serializers", "~> 0.10.0"
gem "bootsnap", ">= 1.4.2", require: false
gem "rails", "~> 6.0.3", ">= 6.0.3.4"
gem "mysql2", ">= 0.4.4"
gem "puma", "~> 4.1"
gem "rack-cors"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "faker"
  gem "rspec-rails"
  gem "factory_girl_rails"
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
