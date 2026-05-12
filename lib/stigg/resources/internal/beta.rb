# frozen_string_literal: true

module Stigg
  module Resources
    class Internal
      class Beta
        # @return [Stigg::Resources::Internal::Beta::EventQueues]
        attr_reader :event_queues

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @event_queues = Stigg::Resources::Internal::Beta::EventQueues.new(client: client)
        end
      end
    end
  end
end
