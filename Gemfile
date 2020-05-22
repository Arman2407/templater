source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "rails", ">= 6.0.3"

### DB
gem "pg", ">= 0.18", "< 2.0"

### Application
gem "puma", "~> 4.1"

### Frontend
gem "webpacker", "~> 4.0"

### View helpers
gem "country_select"
gem "name_of_person"

### Auth
gem "devise"

### JSON / API
gem "jbuilder", "~> 2.7"

### I18n
gem "countries"
gem "devise-i18n"

### Tools
gem "bootsnap", ">= 1.4.2", require: false
gem "config"
gem "image_processing", "~> 1.2"

group :development, :test do
  gem "brakeman"
  gem "bullet"
  gem "byebug", platforms: %i[mri mingw x64_mingw]

  gem "capybara"
  gem "cucumber-rails", require: false
  gem "email_spec"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "rails-controller-testing"
  gem "rspec-rails", "~> 4.0.0.beta4"
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "shoulda-matchers"
  gem "standard", "~> 0.2.0", require: false
end

group :test do
  gem "database_cleaner"
end

group :development do
  gem "awesome_print"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "lol_dba"
  gem "pry-byebug"
  gem "pry-rails"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

# Windows does not include zoneinfo files and wdm, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "wdm", ">= 0.1.0", platforms: %i[mingw mswin x64_mingw jruby]
