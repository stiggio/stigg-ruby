# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Usage
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
