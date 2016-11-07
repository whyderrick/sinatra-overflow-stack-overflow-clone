source 'https://rubygems.org'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra', '~> 1.0'
gem 'sinatra-contrib'

gem 'activesupport', '~>4.2.0'
gem 'activerecord', '~>4.2.0'
gem 'bcrypt'
gem 'rake'

gem 'shotgun', '~>0.9.1'
gem 'rack', '1.5.2' # Was receiving a weird and much less helpful error message in the home environment so downgraded this

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec', '~>3.0'
  gem 'capybara'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
end
