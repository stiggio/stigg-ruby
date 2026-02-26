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

      # @return [Stigg::Resources::V1::Features]
      attr_reader :features

      # @return [Stigg::Resources::V1::Addons]
      attr_reader :addons

      # @return [Stigg::Resources::V1::Plans]
      attr_reader :plans

      # @return [Stigg::Resources::V1::Usage]
      attr_reader :usage

      # @return [Stigg::Resources::V1::Products]
      attr_reader :products

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @customers = Stigg::Resources::V1::Customers.new(client: client)
        @subscriptions = Stigg::Resources::V1::Subscriptions.new(client: client)
        @coupons = Stigg::Resources::V1::Coupons.new(client: client)
        @events = Stigg::Resources::V1::Events.new(client: client)
        @features = Stigg::Resources::V1::Features.new(client: client)
        @addons = Stigg::Resources::V1::Addons.new(client: client)
        @plans = Stigg::Resources::V1::Plans.new(client: client)
        @usage = Stigg::Resources::V1::Usage.new(client: client)
        @products = Stigg::Resources::V1::Products.new(client: client)
      end
    end
  end
end
