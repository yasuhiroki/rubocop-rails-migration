require 'rubocop'

require_relative "rubocop/rails/migrations"
require_relative "rubocop/rails/migrations/version"
require_relative "rubocop/rails/migrations/inject"

RuboCop::Rails::Migrations::Inject.defaults!

require_relative "rubocop/cop/rails/migrations_cops"
