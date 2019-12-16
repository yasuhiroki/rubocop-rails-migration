require "test_helper"

class RuboCop::Rails::MigrationsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RuboCop::Rails::Migrations::VERSION
  end
end
