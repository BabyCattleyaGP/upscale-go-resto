# Mini Go-Resto App

## Description

Create application to manage go-resto
- Add food to resto menu
- See the list of food in resto menu
- Edit food in resto menu

## Dev Environment

* Ruby 2.6.5p114
* Rails 6.0.2.2

## Build Instruction
bundle install

## Run Instruction
rails server

## Included Gems

* [rspec](http://rspec.info/) - for testing
* [factory_bot](https://github.com/thoughtbot/factory_bot)
* [faker](https://github.com/faker-ruby/faker) - generates fake data
* [capybara](https://github.com/teamcapybara/capybara) - helps you test web applications (views)
* [spring](https://github.com/rails/spring) - application preloader
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) - one-liners to test
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner) - ensure a clean state during tests

## Installation

Start with `bundle install`

## Database Migration

On command line `rake db:drop db:create db:migrate db:seed db:test:prepare`

## Run

On terminal run `rails server`

## Running tests

* run `bundle exec rspec`
* for spesific file : `rspec spec/****/****_spec.rb`
