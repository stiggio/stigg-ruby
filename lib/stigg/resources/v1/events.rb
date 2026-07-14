# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Events
        # @return [Stigg::Resources::V1::Events::DataExport]
        attr_reader :data_export

        # @return [Stigg::Resources::V1::Events::Beta]
        attr_reader :beta

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EventEstimateCostParams} for more details.
        #
        # Estimates the credit cost of a usage event without ingesting it. Returns the
        # estimated cost per credit currency, the current balance, and the balance after
        # the estimated consumption.
        #
        # @overload estimate_cost(customer_id:, event_name:, dimensions: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Body param: Customer id
        #
        # @param event_name [String] Body param: The name of the usage event
        #
        # @param dimensions [Hash{Symbol=>String, Float, Boolean}] Body param: Dimensions associated with the usage event
        #
        # @param resource_id [String, nil] Body param: Resource id
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EventEstimateCostResponse]
        #
        # @see Stigg::Models::V1::EventEstimateCostParams
        def estimate_cost(params)
          parsed, options = Stigg::V1::EventEstimateCostParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/events/estimate",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::EventEstimateCostResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EventReportParams} for more details.
        #
        # Reports raw usage events for event-based metering. Events are ingested
        # asynchronously and aggregated into usage totals.
        #
        # @overload report(events:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param events [Array<Stigg::Models::V1::EventReportParams::Event>] Body param: A list of usage events to report
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EventReportResponse]
        #
        # @see Stigg::Models::V1::EventReportParams
        def report(params)
          parsed, options = Stigg::V1::EventReportParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/events",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::EventReportResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @data_export = Stigg::Resources::V1::Events::DataExport.new(client: client)
          @beta = Stigg::Resources::V1::Events::Beta.new(client: client)
        end
      end
    end
  end
end
