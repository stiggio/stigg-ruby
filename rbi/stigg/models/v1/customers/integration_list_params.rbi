# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class IntegrationListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::IntegrationListParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

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

          # Maximum number of items to return
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Filter by vendor identifier. Supports comma-separated values for multiple
          # vendors (e.g., STRIPE,HUBSPOT)
          sig { returns(T.nilable(String)) }
          attr_reader :vendor_identifier

          sig { params(vendor_identifier: String).void }
          attr_writer :vendor_identifier

          sig do
            params(
              id: String,
              after: String,
              before: String,
              limit: Integer,
              vendor_identifier: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by vendor identifier. Supports comma-separated values for multiple
            # vendors (e.g., STRIPE,HUBSPOT)
            vendor_identifier: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                after: String,
                before: String,
                limit: Integer,
                vendor_identifier: String,
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
