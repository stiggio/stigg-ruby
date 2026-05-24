# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        # @return [Stigg::Resources::V1Beta::Customers::Entitlements]
        attr_reader :entitlements

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @entitlements = Stigg::Resources::V1Beta::Customers::Entitlements.new(client: client)
        end
      end
    end
  end
end
