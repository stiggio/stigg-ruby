# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Credits
          # Operations related to credit grants
          sig { returns(Stigg::Resources::V1::Events::Credits::Grants) }
          attr_reader :grants

          # Retrieves the automatic recharge configuration for a customer and currency.
          # Returns default settings if no configuration exists.
          sig do
            params(
              currency_id: String,
              customer_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::CreditGetAutoRechargeResponse)
          end
          def get_auto_recharge(
            # Filter by currency ID (required)
            currency_id:,
            # Filter by customer ID (required)
            customer_id:,
            request_options: {}
          )
          end

          # Retrieves credit usage time-series data for a customer, grouped by feature, over
          # a specified time range.
          sig do
            params(
              customer_id: String,
              currency_id: String,
              end_date: Time,
              resource_id: String,
              start_date: Time,
              time_range:
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::CreditGetUsageResponse)
          end
          def get_usage(
            # Filter by customer ID (required)
            customer_id:,
            # Filter by currency ID
            currency_id: nil,
            # End date for the credit usage time range (ISO 8601). Defaults to now when
            # startDate is provided
            end_date: nil,
            # Filter by resource ID
            resource_id: nil,
            # Start date for the credit usage time range (ISO 8601). Takes precedence over
            # timeRange when provided
            start_date: nil,
            # Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
            # to LAST_MONTH
            time_range: nil,
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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Events::CreditListLedgerResponse
              ]
            )
          end
          def list_ledger(
            # Filter by customer ID (required)
            customer_id:,
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Filter by currency ID
            currency_id: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by resource ID
            resource_id: nil,
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
end
