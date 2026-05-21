# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            # @return [Stigg::Resources::V1::Events::Beta::Customers::Entitlements]
            attr_reader :entitlements

            # @api private
            #
            # @param client [Stigg::Client]
            def initialize(client:)
              @client = client
              @entitlements = Stigg::Resources::V1::Events::Beta::Customers::Entitlements.new(client: client)
            end
          end
        end
      end
    end
  end
end
