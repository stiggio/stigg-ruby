# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to credit grants
        sig { returns(Stigg::Resources::V1::Credits::Grants) }
        attr_reader :grants

        # Operations related to custom currencies
        sig { returns(Stigg::Resources::V1::Credits::CustomCurrencies) }
        attr_reader :custom_currencies

        sig { returns(Stigg::Resources::V1::Credits::Consumption) }
        attr_reader :consumption

        # Retrieves the automatic recharge configuration for a customer and currency.
        # Returns default settings if no configuration exists.
        sig do
          params(
            currency_id: String,
            customer_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CreditGetAutoRechargeResponse)
        end
        def get_auto_recharge(
          # Query param: Filter by currency ID (required)
          currency_id:,
          # Query param: Filter by customer ID (required)
          customer_id:,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves credit usage time-series data for a customer, grouped by feature, over
        # a specified time range.
        sig do
          params(
            customer_id: String,
            after: String,
            before: String,
            currency_id: String,
            end_date: Time,
            group_by: String,
            limit: Integer,
            resource_id: String,
            start_date: Time,
            time_range: Stigg::V1::CreditGetUsageParams::TimeRange::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CreditGetUsageResponse)
        end
        def get_usage(
          # Query param: Filter by customer ID (required)
          customer_id:,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by currency ID
          currency_id: nil,
          # Query param: End date for the credit usage time range (ISO 8601). Defaults to
          # now when startDate is provided
          end_date: nil,
          # Query param: Comma-separated list of feature dimension keys to group usage
          # series by (up to 3). Each key matches /^[a-zA-Z0-9_$-]+$/
          group_by: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by resource ID
          resource_id: nil,
          # Query param: Start date for the credit usage time range (ISO 8601). Takes
          # precedence over timeRange when provided
          start_date: nil,
          # Query param: Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH,
          # LAST_YEAR). Defaults to LAST_MONTH
          time_range: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of credit ledger events for a customer.
        sig do
          params(
            customer_id: String,
            after: String,
            before: String,
            currency_id: String,
            limit: Integer,
            resource_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CreditListLedgerResponse
            ]
          )
        end
        def list_ledger(
          # Query param: Filter by customer ID (required)
          customer_id:,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by currency ID
          currency_id: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by resource ID
          resource_id: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
