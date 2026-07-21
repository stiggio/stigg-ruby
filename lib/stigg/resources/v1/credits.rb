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

        # @return [Stigg::Resources::V1::Credits::Consumption]
        attr_reader :consumption

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CreditGetAutoRechargeParams} for more details.
        #
        # Retrieves the automatic recharge configuration for a customer and currency.
        # Returns default settings if no configuration exists.
        #
        # @overload get_auto_recharge(currency_id:, customer_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param currency_id [String] Query param: Filter by currency ID (required)
        #
        # @param customer_id [String] Query param: Filter by customer ID (required)
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CreditGetAutoRechargeResponse]
        #
        # @see Stigg::Models::V1::CreditGetAutoRechargeParams
        def get_auto_recharge(params)
          query_params = [:currency_id, :customer_id]
          parsed, options = Stigg::V1::CreditGetAutoRechargeParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/credits/auto-recharge",
            query: query.transform_keys(currency_id: "currencyId", customer_id: "customerId"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
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
        # @overload get_usage(customer_id:, after: nil, before: nil, currency_id: nil, end_date: nil, group_by: nil, limit: nil, resource_id: nil, start_date: nil, time_range: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Query param: Filter by customer ID (required)
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param currency_id [String] Query param: Filter by currency ID
        #
        # @param end_date [Time] Query param: End date for the credit usage time range (ISO 8601). Defaults to no
        #
        # @param group_by [String] Query param: Comma-separated list of feature dimension keys to group usage serie
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param resource_id [String] Query param: Filter by resource ID
        #
        # @param start_date [Time] Query param: Start date for the credit usage time range (ISO 8601). Takes preced
        #
        # @param time_range [Symbol, Stigg::Models::V1::CreditGetUsageParams::TimeRange] Query param: Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YE
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CreditGetUsageResponse]
        #
        # @see Stigg::Models::V1::CreditGetUsageParams
        def get_usage(params)
          query_params =
            [
              :customer_id,
              :after,
              :before,
              :currency_id,
              :end_date,
              :group_by,
              :limit,
              :resource_id,
              :start_date,
              :time_range
            ]
          parsed, options = Stigg::V1::CreditGetUsageParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
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
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::CreditGetUsageResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CreditListLedgerParams} for more details.
        #
        # Retrieves a paginated list of credit ledger events for a customer.
        #
        # @overload list_ledger(customer_id:, after: nil, before: nil, currency_id: nil, event_type: nil, limit: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Query param: Filter by customer ID (required)
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param currency_id [String] Query param: Filter by currency ID
        #
        # @param event_type [String] Query param: Filter by event type(s), comma-separated
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param resource_id [String] Query param: Filter by resource ID
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CreditListLedgerResponse>]
        #
        # @see Stigg::Models::V1::CreditListLedgerParams
        def list_ledger(params)
          query_params = [:customer_id, :after, :before, :currency_id, :event_type, :limit, :resource_id]
          parsed, options = Stigg::V1::CreditListLedgerParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/credits/ledger",
            query: query.transform_keys(
              customer_id: "customerId",
              currency_id: "currencyId",
              event_type: "eventType",
              resource_id: "resourceId"
            ),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
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
          @consumption = Stigg::Resources::V1::Credits::Consumption.new(client: client)
        end
      end
    end
  end
end
