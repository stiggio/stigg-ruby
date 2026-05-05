# typed: strong

module Stigg
  module Resources
    class Internal
      class Beta
        class EventQueues
          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
