# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionDelegateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::SubscriptionDelegateParams,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier of the customer who will assume payment responsibility for
        # this subscription. This customer must already exist in your Stigg account and
        # have a valid payment method if the subscription requires payment.
        sig { returns(String) }
        attr_accessor :target_customer_id

        sig do
          params(
            target_customer_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the customer who will assume payment responsibility for
          # this subscription. This customer must already exist in your Stigg account and
          # have a valid payment method if the subscription requires payment.
          target_customer_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              target_customer_id: String,
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
