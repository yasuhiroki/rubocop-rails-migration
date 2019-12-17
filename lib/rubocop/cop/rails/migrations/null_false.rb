# frozen_string_literal: true

# TODO: when finished, run `rake generate_cops_documentation` to update the docs
module RuboCop
  module Cop
    module Rails
      module Migrations
        # TODO: Write cop description and example of bad / good code. For every
        class NullFalse < Cop
          # TODO: Implement the cop in here.
          MSG = 'Use `#good_method` instead of `#bad_method`.'

          def_node_matcher :bad_method?, <<~PATTERN
            (send nil? :bad_method ...)
          PATTERN

          def on_send(node)
            return unless bad_method?(node)

            add_offense(node)
          end
        end
      end
    end
  end
end

