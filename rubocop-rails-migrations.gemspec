lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/rails/migrations/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-rails-migrations"
  spec.version       = RuboCop::Rails::Migrations::VERSION
  spec.authors       = ["yasuhiroki"]
  spec.email         = ["yasuhiroki.duck@gmail.com"]

  spec.summary       = %q{A custom cop for Rails migration file}
  spec.description   = %q{A custom cop for Rails migration file}
  spec.homepage      = "https://github.com/yasuhiroki/rubocop-rails-migrations"
  spec.licenses      = ['MIT']


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rubocop', '~> 0.72'
end
