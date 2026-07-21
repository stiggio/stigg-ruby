# typed: strong

module Stigg
  module Models
    module V1
      class CreditListLedgerParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CreditListLedgerParams, Stigg::Internal::AnyHash)
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

        # Filter by event type(s), comma-separated
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

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

        sig { returns(T.nilable(String)) }
        attr_reader :x_account_id

        sig { params(x_account_id: String).void }
        attr_writer :x_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :x_environment_id

        sig { params(x_environment_id: String).void }
        attr_writer :x_environment_id

        sig do
          params(
            customer_id: String,
            after: String,
            before: String,
            currency_id: String,
            event_type: String,
            limit: Integer,
            resource_id: String,
            x_account_id: String,
            x_environment_id: String,
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
          # Filter by event type(s), comma-separated
          event_type: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by resource ID
          resource_id: nil,
          x_account_id: nil,
          x_environment_id: nil,
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
              event_type: String,
              limit: Integer,
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
