# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionMigrateResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::SubscriptionMigrateResponse,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(Stigg::Models::V1::SubscriptionMigrateResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::SubscriptionMigrateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Stigg::Models::V1::SubscriptionMigrateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::SubscriptionMigrateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::SubscriptionMigrateResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

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
              Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
            )
          end
          attr_accessor :payment_collection

          # Plan ID
          sig { returns(String) }
          attr_accessor :plan_id

          # Pricing type
          sig do
            returns(
              Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol
            )
          end
          attr_accessor :pricing_type

          # Subscription start date
          sig { returns(Time) }
          attr_accessor :start_date

          # Subscription status
          sig do
            returns(
              Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Subscription cancellation date
          sig { returns(T.nilable(Time)) }
          attr_accessor :cancellation_date

          # Subscription cancel reason
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
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
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
              )
            )
          end
          attr_accessor :payment_collection_method

          # Resource ID
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Subscription trial end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :trial_end_date

          sig do
            params(
              id: String,
              billing_id: T.nilable(String),
              created_at: Time,
              customer_id: String,
              payment_collection:
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::OrSymbol,
              plan_id: String,
              pricing_type:
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::OrSymbol,
              start_date: Time,
              status:
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::OrSymbol,
              cancellation_date: T.nilable(Time),
              cancel_reason:
                T.nilable(
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::OrSymbol
                ),
              current_billing_period_end: T.nilable(Time),
              current_billing_period_start: T.nilable(Time),
              effective_end_date: T.nilable(Time),
              end_date: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              paying_customer_id: T.nilable(String),
              payment_collection_method:
                T.nilable(
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::OrSymbol
                ),
              resource_id: T.nilable(String),
              trial_end_date: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
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
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol,
                plan_id: String,
                pricing_type:
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol,
                start_date: Time,
                status:
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol,
                cancellation_date: T.nilable(Time),
                cancel_reason:
                  T.nilable(
                    Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
                  ),
                current_billing_period_end: T.nilable(Time),
                current_billing_period_start: T.nilable(Time),
                effective_end_date: T.nilable(Time),
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                paying_customer_id: T.nilable(String),
                payment_collection_method:
                  T.nilable(
                    Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
                  ),
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
                T.all(
                  Symbol,
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_REQUIRED =
              T.let(
                :NOT_REQUIRED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
              )
            ACTION_REQUIRED =
              T.let(
                :ACTION_REQUIRED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollection::TaggedSymbol
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
                T.all(
                  Symbol,
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FREE =
              T.let(
                :FREE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol
              )
            PAID =
              T.let(
                :PAID,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PricingType::TaggedSymbol
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
                T.all(
                  Symbol,
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_PENDING =
              T.let(
                :PAYMENT_PENDING,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )
            IN_TRIAL =
              T.let(
                :IN_TRIAL,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )
            NOT_STARTED =
              T.let(
                :NOT_STARTED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::Status::TaggedSymbol
                ]
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
                T.all(
                  Symbol,
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UPGRADE_OR_DOWNGRADE =
              T.let(
                :UPGRADE_OR_DOWNGRADE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            CANCELLED_BY_BILLING =
              T.let(
                :CANCELLED_BY_BILLING,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            DETACH_BILLING =
              T.let(
                :DETACH_BILLING,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            TRIAL_ENDED =
              T.let(
                :TRIAL_ENDED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            IMMEDIATE =
              T.let(
                :Immediate,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            TRIAL_CONVERTED =
              T.let(
                :TRIAL_CONVERTED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            PENDING_PAYMENT_EXPIRED =
              T.let(
                :PENDING_PAYMENT_EXPIRED,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            SCHEDULED_CANCELLATION =
              T.let(
                :ScheduledCancellation,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            CUSTOMER_ARCHIVED =
              T.let(
                :CustomerArchived,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )
            AUTO_CANCELLATION_RULE =
              T.let(
                :AutoCancellationRule,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::CancelReason::TaggedSymbol
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
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGE =
              T.let(
                :CHARGE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
              )
            INVOICE =
              T.let(
                :INVOICE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionMigrateResponse::Data::PaymentCollectionMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
