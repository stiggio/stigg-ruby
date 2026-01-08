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

        # The resource ID to transfer the subscription to. The destination resource must
        # belong to the same customer.
        sig { returns(String) }
        attr_accessor :destination_resource_id

        sig do
          params(
            destination_resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The resource ID to transfer the subscription to. The destination resource must
          # belong to the same customer.
          destination_resource_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
