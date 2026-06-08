# typed: strong

module Stigg
  module Models
    module V1
      class CreditGetAutoRechargeParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::CreditGetAutoRechargeParams,
              Stigg::Internal::AnyHash
            )
          end

        # Filter by currency ID (required)
        sig { returns(String) }
        attr_accessor :currency_id

        # Filter by customer ID (required)
        sig { returns(String) }
        attr_accessor :customer_id

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
            currency_id: String,
            customer_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by currency ID (required)
          currency_id:,
          # Filter by customer ID (required)
          customer_id:,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              currency_id: String,
              customer_id: String,
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
