# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditGetUsageParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::CreditGetUsageParams,
                Stigg::Internal::AnyHash
              )
            end

          # Filter by customer ID (required)
          sig { returns(String) }
          attr_accessor :customer_id

          # Filter by currency ID
          sig { returns(T.nilable(String)) }
          attr_reader :currency_id

          sig { params(currency_id: String).void }
          attr_writer :currency_id

          # Filter by resource ID
          sig { returns(T.nilable(String)) }
          attr_reader :resource_id

          sig { params(resource_id: String).void }
          attr_writer :resource_id

          # Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
          # to LAST_MONTH
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::OrSymbol
              )
            )
          end
          attr_reader :time_range

          sig do
            params(
              time_range:
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::OrSymbol
            ).void
          end
          attr_writer :time_range

          sig do
            params(
              customer_id: String,
              currency_id: String,
              resource_id: String,
              time_range:
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by customer ID (required)
            customer_id:,
            # Filter by currency ID
            currency_id: nil,
            # Filter by resource ID
            resource_id: nil,
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
                currency_id: String,
                resource_id: String,
                time_range:
                  Stigg::V1::Events::CreditGetUsageParams::TimeRange::OrSymbol,
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
                T.all(
                  Symbol,
                  Stigg::V1::Events::CreditGetUsageParams::TimeRange
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LAST_DAY =
              T.let(
                :LAST_DAY,
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::TaggedSymbol
              )
            LAST_WEEK =
              T.let(
                :LAST_WEEK,
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::TaggedSymbol
              )
            LAST_MONTH =
              T.let(
                :LAST_MONTH,
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::TaggedSymbol
              )
            LAST_YEAR =
              T.let(
                :LAST_YEAR,
                Stigg::V1::Events::CreditGetUsageParams::TimeRange::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::CreditGetUsageParams::TimeRange::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
