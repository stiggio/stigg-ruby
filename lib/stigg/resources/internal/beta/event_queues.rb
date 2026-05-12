# frozen_string_literal: true

module Stigg
  module Resources
    class Internal
      class Beta
        class EventQueues
          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
