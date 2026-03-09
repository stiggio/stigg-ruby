# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Credits
          # Operations related to credit grants
          # @return [Stigg::Resources::V1::Events::Credits::Grants]
          attr_reader :grants

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
          # @return [Stigg::Models::V1::Events::CreditGetAutoRechargeResponse]
          #
          # @see Stigg::Models::V1::Events::CreditGetAutoRechargeParams
          def get_auto_recharge(params)
            parsed, options = Stigg::V1::Events::CreditGetAutoRechargeParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "api/v1/credits/auto-recharge",
              query: query.transform_keys(currency_id: "currencyId", customer_id: "customerId"),
              model: Stigg::Models::V1::Events::CreditGetAutoRechargeResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Events::CreditGetUsageParams} for more details.
          #
          # Retrieves credit usage time-series data for a customer, grouped by feature, over
          # a specified time range.
          #
          # @overload get_usage(customer_id:, currency_id: nil, resource_id: nil, time_range: nil, request_options: {})
          #
          # @param customer_id [String] Filter by customer ID (required)
          #
          # @param currency_id [String] Filter by currency ID
          #
          # @param resource_id [String] Filter by resource ID
          #
          # @param time_range [Symbol, Stigg::Models::V1::Events::CreditGetUsageParams::TimeRange] Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::CreditGetUsageResponse]
          #
          # @see Stigg::Models::V1::Events::CreditGetUsageParams
          def get_usage(params)
            parsed, options = Stigg::V1::Events::CreditGetUsageParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "api/v1/credits/usage",
              query: query.transform_keys(
                customer_id: "customerId",
                currency_id: "currencyId",
                resource_id: "resourceId",
                time_range: "timeRange"
              ),
              model: Stigg::Models::V1::Events::CreditGetUsageResponse,
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
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::CreditListLedgerResponse>]
          #
          # @see Stigg::Models::V1::Events::CreditListLedgerParams
          def list_ledger(params)
            parsed, options = Stigg::V1::Events::CreditListLedgerParams.dump_request(params)
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
              model: Stigg::Models::V1::Events::CreditListLedgerResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
            @grants = Stigg::Resources::V1::Events::Credits::Grants.new(client: client)
          end
        end
      end
    end
  end
end
