# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to credit grants
        # @return [Stigg::Resources::V1::Credits::Grants]
        attr_reader :grants

        # Operations related to custom currencies
        # @return [Stigg::Resources::V1::Credits::CustomCurrencies]
        attr_reader :custom_currencies

        # Retrieves the automatic recharge configuration for a customer and currency.
        # Returns default settings if no configuration exists.
        #
        # @overload get_auto_recharge(currency_id:, customer_id:, request_options: {})
        #
        # @param currency_id [String] Filter by currency ID (required)
        #
        # @param customer_id [String] Filter by customer ID (required)
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CreditGetAutoRechargeResponse]
        #
        # @see Stigg::Models::V1::CreditGetAutoRechargeParams
        def get_auto_recharge(params)
          parsed, options = Stigg::V1::CreditGetAutoRechargeParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "api/v1/credits/auto-recharge",
            query: query.transform_keys(currency_id: "currencyId", customer_id: "customerId"),
            model: Stigg::Models::V1::CreditGetAutoRechargeResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CreditGetUsageParams} for more details.
        #
        # Retrieves credit usage time-series data for a customer, grouped by feature, over
        # a specified time range.
        #
        # @overload get_usage(customer_id:, after: nil, before: nil, currency_id: nil, end_date: nil, group_by: nil, limit: nil, resource_id: nil, start_date: nil, time_range: nil, request_options: {})
        #
        # @param customer_id [String] Filter by customer ID (required)
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param currency_id [String] Filter by currency ID
        #
        # @param end_date [Time] End date for the credit usage time range (ISO 8601). Defaults to now when startD
        #
        # @param group_by [String] Comma-separated list of feature dimension keys to group usage series by (up to 3
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param resource_id [String] Filter by resource ID
        #
        # @param start_date [Time] Start date for the credit usage time range (ISO 8601). Takes precedence over tim
        #
        # @param time_range [Symbol, Stigg::Models::V1::CreditGetUsageParams::TimeRange] Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CreditGetUsageResponse]
        #
        # @see Stigg::Models::V1::CreditGetUsageParams
        def get_usage(params)
          parsed, options = Stigg::V1::CreditGetUsageParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "api/v1/credits/usage",
            query: query.transform_keys(
              customer_id: "customerId",
              currency_id: "currencyId",
              end_date: "endDate",
              group_by: "groupBy",
              resource_id: "resourceId",
              start_date: "startDate",
              time_range: "timeRange"
            ),
            model: Stigg::Models::V1::CreditGetUsageResponse,
            options: options
          )
        end

        # Retrieves a paginated list of credit ledger events for a customer.
        #
        # @overload list_ledger(customer_id:, after: nil, before: nil, currency_id: nil, limit: nil, resource_id: nil, request_options: {})
        #
        # @param customer_id [String] Filter by customer ID (required)
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param currency_id [String] Filter by currency ID
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param resource_id [String] Filter by resource ID
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CreditListLedgerResponse>]
        #
        # @see Stigg::Models::V1::CreditListLedgerParams
        def list_ledger(params)
          parsed, options = Stigg::V1::CreditListLedgerParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "api/v1/credits/ledger",
            query: query.transform_keys(
              customer_id: "customerId",
              currency_id: "currencyId",
              resource_id: "resourceId"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CreditListLedgerResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @grants = Stigg::Resources::V1::Credits::Grants.new(client: client)
          @custom_currencies = Stigg::Resources::V1::Credits::CustomCurrencies.new(client: client)
        end
      end
    end
  end
end
