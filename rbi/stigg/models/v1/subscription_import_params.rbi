# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionImportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionImportParams, Stigg::Internal::AnyHash)
          end

        # List of subscription objects to import
        sig do
          returns(T::Array[Stigg::V1::SubscriptionImportParams::Subscription])
        end
        attr_accessor :subscriptions

        sig do
          params(
            subscriptions:
              T::Array[
                Stigg::V1::SubscriptionImportParams::Subscription::OrHash
              ],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of subscription objects to import
          subscriptions:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriptions:
                T::Array[Stigg::V1::SubscriptionImportParams::Subscription],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Subscription < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionImportParams::Subscription,
                Stigg::Internal::AnyHash
              )
            end

          # Subscription ID
          sig { returns(String) }
          attr_accessor :id

          # Customer ID
          sig { returns(String) }
          attr_accessor :customer_id

          # Plan ID
          sig { returns(String) }
          attr_accessor :plan_id

          # Billing ID
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Subscription end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Resource ID
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Subscription start date
          sig { returns(T.nilable(Time)) }
          attr_reader :start_date

          sig { params(start_date: Time).void }
          attr_writer :start_date

          sig do
            params(
              id: String,
              customer_id: String,
              plan_id: String,
              billing_id: T.nilable(String),
              end_date: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              resource_id: T.nilable(String),
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Subscription ID
            id:,
            # Customer ID
            customer_id:,
            # Plan ID
            plan_id:,
            # Billing ID
            billing_id: nil,
            # Subscription end date
            end_date: nil,
            # Additional metadata for the subscription
            metadata: nil,
            # Resource ID
            resource_id: nil,
            # Subscription start date
            start_date: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_id: String,
                plan_id: String,
                billing_id: T.nilable(String),
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                resource_id: T.nilable(String),
                start_date: Time
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
