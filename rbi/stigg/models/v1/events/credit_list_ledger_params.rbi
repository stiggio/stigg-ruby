# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditListLedgerParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::CreditListLedgerParams,
                Stigg::Internal::AnyHash
              )
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

          sig do
            params(
              customer_id: String,
              after: String,
              before: String,
              currency_id: String,
              limit: Integer,
              resource_id: String,
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
            # Maximum number of items to return
            limit: nil,
            # Filter by resource ID
            resource_id: nil,
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
                limit: Integer,
                resource_id: String,
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
end
