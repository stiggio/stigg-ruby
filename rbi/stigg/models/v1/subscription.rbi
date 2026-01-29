# typed: strong

module Stigg
  module Models
    module V1
      class Subscription < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Stigg::V1::Subscription, Stigg::Internal::AnyHash)
          end

        # Customer subscription to a plan
        sig { returns(Stigg::V1::Subscription::Data) }
        attr_reader :data

        sig { params(data: Stigg::V1::Subscription::Data::OrHash).void }
        attr_writer :data

        # Response object
        sig do
          params(data: Stigg::V1::Subscription::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Customer subscription to a plan
          data:
        )
        end

        sig { override.returns({ data: Stigg::V1::Subscription::Data }) }
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Stigg::V1::Subscription::Data, Stigg::Internal::AnyHash)
            end

          # Subscription ID
          sig { returns(String) }
          attr_accessor :id

          # Billing ID
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Created at
          sig { returns(Time) }
          attr_accessor :created_at

          # Customer ID
          sig { returns(String) }
          attr_accessor :customer_id

          # Payment collection
          sig do
            returns(
              Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
            )
          end
          attr_accessor :payment_collection

          # Plan ID
          sig { returns(String) }
          attr_accessor :plan_id

          # Pricing type
          sig do
            returns(Stigg::V1::Subscription::Data::PricingType::TaggedSymbol)
          end
          attr_accessor :pricing_type

          # Subscription start date
          sig { returns(Time) }
          attr_accessor :start_date

          # Subscription status
          sig { returns(Stigg::V1::Subscription::Data::Status::TaggedSymbol) }
          attr_accessor :status

          # Subscription cancellation date
          sig { returns(T.nilable(Time)) }
          attr_accessor :cancellation_date

          # Subscription cancel reason
          sig do
            returns(
              T.nilable(
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            )
          end
          attr_accessor :cancel_reason

          # End of the current billing period
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_end

          # Start of the current billing period
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_start

          # Subscription effective end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :effective_end_date

          # Subscription end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Paying customer ID for delegated billing
          sig { returns(T.nilable(String)) }
          attr_accessor :paying_customer_id

          # The method used to collect payments for a subscription
          sig do
            returns(
              T.nilable(
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            )
          end
          attr_accessor :payment_collection_method

          sig do
            returns(T.nilable(T::Array[Stigg::V1::Subscription::Data::Price]))
          end
          attr_reader :prices

          sig do
            params(
              prices: T::Array[Stigg::V1::Subscription::Data::Price::OrHash]
            ).void
          end
          attr_writer :prices

          # Resource ID
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Subscription trial end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :trial_end_date

          # Customer subscription to a plan
          sig do
            params(
              id: String,
              billing_id: T.nilable(String),
              created_at: Time,
              customer_id: String,
              payment_collection:
                Stigg::V1::Subscription::Data::PaymentCollection::OrSymbol,
              plan_id: String,
              pricing_type:
                Stigg::V1::Subscription::Data::PricingType::OrSymbol,
              start_date: Time,
              status: Stigg::V1::Subscription::Data::Status::OrSymbol,
              cancellation_date: T.nilable(Time),
              cancel_reason:
                T.nilable(
                  Stigg::V1::Subscription::Data::CancelReason::OrSymbol
                ),
              current_billing_period_end: T.nilable(Time),
              current_billing_period_start: T.nilable(Time),
              effective_end_date: T.nilable(Time),
              end_date: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              paying_customer_id: T.nilable(String),
              payment_collection_method:
                T.nilable(
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod::OrSymbol
                ),
              prices: T::Array[Stigg::V1::Subscription::Data::Price::OrHash],
              resource_id: T.nilable(String),
              trial_end_date: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            # Subscription ID
            id:,
            # Billing ID
            billing_id:,
            # Created at
            created_at:,
            # Customer ID
            customer_id:,
            # Payment collection
            payment_collection:,
            # Plan ID
            plan_id:,
            # Pricing type
            pricing_type:,
            # Subscription start date
            start_date:,
            # Subscription status
            status:,
            # Subscription cancellation date
            cancellation_date: nil,
            # Subscription cancel reason
            cancel_reason: nil,
            # End of the current billing period
            current_billing_period_end: nil,
            # Start of the current billing period
            current_billing_period_start: nil,
            # Subscription effective end date
            effective_end_date: nil,
            # Subscription end date
            end_date: nil,
            # Additional metadata for the subscription
            metadata: nil,
            # Paying customer ID for delegated billing
            paying_customer_id: nil,
            # The method used to collect payments for a subscription
            payment_collection_method: nil,
            prices: nil,
            # Resource ID
            resource_id: nil,
            # Subscription trial end date
            trial_end_date: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_id: T.nilable(String),
                created_at: Time,
                customer_id: String,
                payment_collection:
                  Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol,
                plan_id: String,
                pricing_type:
                  Stigg::V1::Subscription::Data::PricingType::TaggedSymbol,
                start_date: Time,
                status: Stigg::V1::Subscription::Data::Status::TaggedSymbol,
                cancellation_date: T.nilable(Time),
                cancel_reason:
                  T.nilable(
                    Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
                  ),
                current_billing_period_end: T.nilable(Time),
                current_billing_period_start: T.nilable(Time),
                effective_end_date: T.nilable(Time),
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                paying_customer_id: T.nilable(String),
                payment_collection_method:
                  T.nilable(
                    Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
                  ),
                prices: T::Array[Stigg::V1::Subscription::Data::Price],
                resource_id: T.nilable(String),
                trial_end_date: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          # Payment collection
          module PaymentCollection
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::PaymentCollection)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_REQUIRED =
              T.let(
                :NOT_REQUIRED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            ACTION_REQUIRED =
              T.let(
                :ACTION_REQUIRED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Pricing type
          module PricingType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::PricingType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FREE =
              T.let(
                :FREE,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )
            PAID =
              T.let(
                :PAID,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Subscription status
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_PENDING =
              T.let(
                :PAYMENT_PENDING,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            IN_TRIAL =
              T.let(
                :IN_TRIAL,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            NOT_STARTED =
              T.let(
                :NOT_STARTED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Stigg::V1::Subscription::Data::Status::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          # Subscription cancel reason
          module CancelReason
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::CancelReason)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UPGRADE_OR_DOWNGRADE =
              T.let(
                :UPGRADE_OR_DOWNGRADE,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            CANCELLED_BY_BILLING =
              T.let(
                :CANCELLED_BY_BILLING,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            DETACH_BILLING =
              T.let(
                :DETACH_BILLING,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            TRIAL_ENDED =
              T.let(
                :TRIAL_ENDED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            IMMEDIATE =
              T.let(
                :Immediate,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            TRIAL_CONVERTED =
              T.let(
                :TRIAL_CONVERTED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            PENDING_PAYMENT_EXPIRED =
              T.let(
                :PENDING_PAYMENT_EXPIRED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            SCHEDULED_CANCELLATION =
              T.let(
                :ScheduledCancellation,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            CUSTOMER_ARCHIVED =
              T.let(
                :CustomerArchived,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            AUTO_CANCELLATION_RULE =
              T.let(
                :AutoCancellationRule,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method used to collect payments for a subscription
          module PaymentCollectionMethod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGE =
              T.let(
                :CHARGE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            INVOICE =
              T.let(
                :INVOICE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Price < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Price,
                  Stigg::Internal::AnyHash
                )
              end

            # Price ID
            sig { returns(String) }
            attr_accessor :id

            # Creation timestamp
            sig { returns(String) }
            attr_accessor :created_at

            # Last update timestamp
            sig { returns(String) }
            attr_accessor :updated_at

            sig do
              params(
                id: String,
                created_at: String,
                updated_at: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Price ID
              id:,
              # Creation timestamp
              created_at:,
              # Last update timestamp
              updated_at:
            )
            end

            sig do
              override.returns(
                { id: String, created_at: String, updated_at: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
