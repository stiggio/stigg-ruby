# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionTransferParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::SubscriptionTransferParams,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Resource ID to transfer the subscription to
        sig { returns(String) }
        attr_accessor :destination_resource_id

        sig do
          params(
            id: String,
            destination_resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Resource ID to transfer the subscription to
          destination_resource_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              destination_resource_id: String,
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
