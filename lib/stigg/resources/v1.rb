# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # @return [Stigg::Resources::V1::Customers]
      attr_reader :customers

      # @return [Stigg::Resources::V1::Subscriptions]
      attr_reader :subscriptions

      # @return [Stigg::Resources::V1::Coupons]
      attr_reader :coupons

      # @return [Stigg::Resources::V1::Events]
      attr_reader :events

      # @return [Stigg::Resources::V1::Usage]
      attr_reader :usage

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @customers = Stigg::Resources::V1::Customers.new(client: client)
        @subscriptions = Stigg::Resources::V1::Subscriptions.new(client: client)
        @coupons = Stigg::Resources::V1::Coupons.new(client: client)
        @events = Stigg::Resources::V1::Events.new(client: client)
        @usage = Stigg::Resources::V1::Usage.new(client: client)
      end
    end
  end
end
