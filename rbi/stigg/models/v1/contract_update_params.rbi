# typed: strong

module Stigg
  module Models
    module V1
      class ContractUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::ContractUpdateParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # New activation end date
        sig { returns(T.nilable(Time)) }
        attr_reader :activation_end_date

        sig { params(activation_end_date: Time).void }
        attr_writer :activation_end_date

        # New activation start date
        sig { returns(T.nilable(Time)) }
        attr_reader :activation_start_date

        sig { params(activation_start_date: Time).void }
        attr_writer :activation_start_date

        # New contract name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # New purchase-order number
        sig { returns(T.nilable(String)) }
        attr_accessor :po_number

        # Enable billing on a provision-access-only contract by creating a billing
        # contract in the connected billing provider. Only takes effect when true and the
        # contract has no billing yet; omitting it leaves billing unchanged. Billing is
        # never removed by an update.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :setup_billing

        sig { params(setup_billing: T::Boolean).void }
        attr_writer :setup_billing

        # When provided, replaces the set of subscriptions linked to the contract
        # (subscription ref IDs)
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :subscription_ids

        sig { params(subscription_ids: T::Array[String]).void }
        attr_writer :subscription_ids

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
            id: String,
            activation_end_date: Time,
            activation_start_date: Time,
            name: T.nilable(String),
            po_number: T.nilable(String),
            setup_billing: T::Boolean,
            subscription_ids: T::Array[String],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # New activation end date
          activation_end_date: nil,
          # New activation start date
          activation_start_date: nil,
          # New contract name
          name: nil,
          # New purchase-order number
          po_number: nil,
          # Enable billing on a provision-access-only contract by creating a billing
          # contract in the connected billing provider. Only takes effect when true and the
          # contract has no billing yet; omitting it leaves billing unchanged. Billing is
          # never removed by an update.
          setup_billing: nil,
          # When provided, replaces the set of subscriptions linked to the contract
          # (subscription ref IDs)
          subscription_ids: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              activation_end_date: Time,
              activation_start_date: Time,
              name: T.nilable(String),
              po_number: T.nilable(String),
              setup_billing: T::Boolean,
              subscription_ids: T::Array[String],
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
