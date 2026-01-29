# typed: strong

module Stigg
  module Models
    module V1
      class CustomerImportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CustomerImportParams, Stigg::Internal::AnyHash)
          end

        # List of customer objects to import
        sig { returns(T::Array[Stigg::V1::CustomerImportParams::Customer]) }
        attr_accessor :customers

        sig do
          params(
            customers:
              T::Array[Stigg::V1::CustomerImportParams::Customer::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of customer objects to import
          customers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customers: T::Array[Stigg::V1::CustomerImportParams::Customer],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Customer < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::CustomerImportParams::Customer,
                Stigg::Internal::AnyHash
              )
            end

          # Customer slug
          sig { returns(String) }
          attr_accessor :id

          # The email of the customer
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The name of the customer
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Additional metadata
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Billing provider payment method id
          sig { returns(T.nilable(String)) }
          attr_reader :payment_method_id

          sig { params(payment_method_id: String).void }
          attr_writer :payment_method_id

          # Timestamp of when the record was last updated
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              payment_method_id: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Customer slug
            id:,
            # The email of the customer
            email:,
            # The name of the customer
            name:,
            # Additional metadata
            metadata: nil,
            # Billing provider payment method id
            payment_method_id: nil,
            # Timestamp of when the record was last updated
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                email: T.nilable(String),
                name: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                payment_method_id: String,
                updated_at: Time
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
