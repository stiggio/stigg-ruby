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

      # Create events
      #
      # @overload create_event(events:, request_options: {})
      #
      # @param events [Array<Stigg::Models::V1CreateEventParams::Event>] A list of usage events to report
      #
      # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Stigg::Models::V1CreateEventResponse]
      #
      # @see Stigg::Models::V1CreateEventParams
      def create_event(params)
        parsed, options = Stigg::V1CreateEventParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/events",
          body: parsed,
          model: Stigg::Models::V1CreateEventResponse,
          options: options
        )
      end

      # Create a new Usage
      #
      # @overload create_usage(usages:, request_options: {})
      #
      # @param usages [Array<Stigg::Models::V1CreateUsageParams::Usage>] A list of usage reports to be submitted in bulk
      #
      # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Stigg::Models::V1CreateUsageResponse]
      #
      # @see Stigg::Models::V1CreateUsageParams
      def create_usage(params)
        parsed, options = Stigg::V1CreateUsageParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/usage",
          body: parsed,
          model: Stigg::Models::V1CreateUsageResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @customers = Stigg::Resources::V1::Customers.new(client: client)
        @subscriptions = Stigg::Resources::V1::Subscriptions.new(client: client)
        @coupons = Stigg::Resources::V1::Coupons.new(client: client)
      end
    end
  end
end
