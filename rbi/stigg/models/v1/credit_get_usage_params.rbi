# typed: strong

module Stigg
  module Models
    module V1
      class CreditGetUsageParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CreditGetUsageParams, Stigg::Internal::AnyHash)
          end

        # Filter by customer ID (required)
        sig { returns(String) }
        attr_accessor :customer_id

        # Return items that come after this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Return items that come before this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Filter by currency ID
        sig { returns(T.nilable(String)) }
        attr_reader :currency_id

        sig { params(currency_id: String).void }
        attr_writer :currency_id

        # End date for the credit usage time range (ISO 8601). Defaults to now when
        # startDate is provided
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        # Comma-separated list of feature dimension keys to group usage series by (up to
        # 3). Each key matches /^[a-zA-Z0-9_$-]+$/
        sig { returns(T.nilable(String)) }
        attr_reader :group_by

        sig { params(group_by: String).void }
        attr_writer :group_by

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by resource ID
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        # Start date for the credit usage time range (ISO 8601). Takes precedence over
        # timeRange when provided
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        # Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
        # to LAST_MONTH
        sig do
          returns(
            T.nilable(Stigg::V1::CreditGetUsageParams::TimeRange::OrSymbol)
          )
        end
        attr_reader :time_range

        sig do
          params(
            time_range: Stigg::V1::CreditGetUsageParams::TimeRange::OrSymbol
          ).void
        end
        attr_writer :time_range

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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by customer ID (required)
          customer_id:,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by currency ID
          currency_id: nil,
          # End date for the credit usage time range (ISO 8601). Defaults to now when
          # startDate is provided
          end_date: nil,
          # Comma-separated list of feature dimension keys to group usage series by (up to
          # 3). Each key matches /^[a-zA-Z0-9_$-]+$/
          group_by: nil,
          # Maximum number of items to return
          limit: nil,
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

        sig do
          override.returns(
            {
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
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
        # to LAST_MONTH
        module TimeRange
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::CreditGetUsageParams::TimeRange)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LAST_DAY =
            T.let(
              :LAST_DAY,
              Stigg::V1::CreditGetUsageParams::TimeRange::TaggedSymbol
            )
          LAST_WEEK =
            T.let(
              :LAST_WEEK,
              Stigg::V1::CreditGetUsageParams::TimeRange::TaggedSymbol
            )
          LAST_MONTH =
            T.let(
              :LAST_MONTH,
              Stigg::V1::CreditGetUsageParams::TimeRange::TaggedSymbol
            )
          LAST_YEAR =
            T.let(
              :LAST_YEAR,
              Stigg::V1::CreditGetUsageParams::TimeRange::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Stigg::V1::CreditGetUsageParams::TimeRange::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
