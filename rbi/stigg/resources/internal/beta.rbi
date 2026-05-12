# typed: strong

module Stigg
  module Resources
    class Internal
      class Beta
        sig { returns(Stigg::Resources::Internal::Beta::EventQueues) }
        attr_reader :event_queues

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
