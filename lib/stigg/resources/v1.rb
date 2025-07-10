# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # @return [Stigg::Resources::V1::Customers]
      attr_reader :customers

      # @return [Stigg::Resources::V1::Permissions]
      attr_reader :permissions

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @customers = Stigg::Resources::V1::Customers.new(client: client)
        @permissions = Stigg::Resources::V1::Permissions.new(client: client)
      end
    end
  end
end
