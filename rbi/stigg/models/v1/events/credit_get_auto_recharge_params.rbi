# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditGetAutoRechargeParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::CreditGetAutoRechargeParams,
                Stigg::Internal::AnyHash
              )
            end

          # Filter by currency ID (required)
          sig { returns(String) }
          attr_accessor :currency_id

          # Filter by customer ID (required)
          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(
              currency_id: String,
              customer_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by currency ID (required)
            currency_id:,
            # Filter by customer ID (required)
            customer_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                currency_id: String,
                customer_id: String,
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
