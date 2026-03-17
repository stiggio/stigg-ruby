# typed: strong

module Stigg
  module Models
    module V1
      class CustomerRetrieveEntitlementsParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::CustomerRetrieveEntitlementsParams,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Resource ID to scope entitlements to a specific resource
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        sig do
          params(
            id: String,
            resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Resource ID to scope entitlements to a specific resource
          resource_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
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
