# typed: strong

module Stigg
  module Models
    module V1
      class ProductListProductsResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::ProductListProductsResponse,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the record was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(String) }
        attr_accessor :display_name

        # Metadata associated with the entity
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Indicates if multiple subscriptions to this product are allowed
        sig { returns(T::Boolean) }
        attr_accessor :multiple_subscriptions

        # The status of the product
        sig do
          returns(
            Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp of when the record was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Product behavior settings for subscription lifecycle management.
        sig do
          returns(
            T.nilable(
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings
            )
          )
        end
        attr_reader :product_settings

        sig do
          params(
            product_settings:
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings::OrHash
          ).void
        end
        attr_writer :product_settings

        # Product configuration object
        sig do
          params(
            id: String,
            created_at: Time,
            description: T.nilable(String),
            display_name: String,
            metadata: T::Hash[Symbol, String],
            multiple_subscriptions: T::Boolean,
            status:
              Stigg::Models::V1::ProductListProductsResponse::Status::OrSymbol,
            updated_at: Time,
            product_settings:
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          id:,
          # Timestamp of when the record was created
          created_at:,
          # Description of the product
          description:,
          # Display name of the product
          display_name:,
          # Metadata associated with the entity
          metadata:,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions:,
          # The status of the product
          status:,
          # Timestamp of when the record was last updated
          updated_at:,
          # Product behavior settings for subscription lifecycle management.
          product_settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              description: T.nilable(String),
              display_name: String,
              metadata: T::Hash[Symbol, String],
              multiple_subscriptions: T::Boolean,
              status:
                Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol,
              updated_at: Time,
              product_settings:
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings
            }
          )
        end
        def to_hash
        end

        # The status of the product
        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::ProductListProductsResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLISHED =
            T.let(
              :PUBLISHED,
              Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :ARCHIVED,
              Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ProductSettings < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings,
                Stigg::Internal::AnyHash
              )
            end

          # Time when the subscription will be cancelled
          sig do
            returns(
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
            )
          end
          attr_accessor :subscription_cancellation_time

          # Setup for the end of the subscription
          sig do
            returns(
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::TaggedSymbol
            )
          end
          attr_accessor :subscription_end_setup

          # Setup for the start of the subscription
          sig do
            returns(
              Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol
            )
          end
          attr_accessor :subscription_start_setup

          # ID of the plan to downgrade to at the end of the billing period
          sig { returns(T.nilable(String)) }
          attr_accessor :downgrade_plan_id

          # Indicates if the subscription should be prorated at the end of the billing
          # period
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate_at_end_of_billing_period

          # ID of the plan to start the subscription with
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_start_plan_id

          # Product behavior settings for subscription lifecycle management.
          sig do
            params(
              subscription_cancellation_time:
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::OrSymbol,
              subscription_end_setup:
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::OrSymbol,
              subscription_start_setup:
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::OrSymbol,
              downgrade_plan_id: T.nilable(String),
              prorate_at_end_of_billing_period: T.nilable(T::Boolean),
              subscription_start_plan_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Time when the subscription will be cancelled
            subscription_cancellation_time:,
            # Setup for the end of the subscription
            subscription_end_setup:,
            # Setup for the start of the subscription
            subscription_start_setup:,
            # ID of the plan to downgrade to at the end of the billing period
            downgrade_plan_id: nil,
            # Indicates if the subscription should be prorated at the end of the billing
            # period
            prorate_at_end_of_billing_period: nil,
            # ID of the plan to start the subscription with
            subscription_start_plan_id: nil
          )
          end

          sig do
            override.returns(
              {
                subscription_cancellation_time:
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol,
                subscription_end_setup:
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::TaggedSymbol,
                subscription_start_setup:
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol,
                downgrade_plan_id: T.nilable(String),
                prorate_at_end_of_billing_period: T.nilable(T::Boolean),
                subscription_start_plan_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Time when the subscription will be cancelled
          module SubscriptionCancellationTime
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            END_OF_BILLING_PERIOD =
              T.let(
                :END_OF_BILLING_PERIOD,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )
            IMMEDIATE =
              T.let(
                :IMMEDIATE,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )
            SPECIFIC_DATE =
              T.let(
                :SPECIFIC_DATE,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Setup for the end of the subscription
          module SubscriptionEndSetup
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DOWNGRADE_TO_FREE =
              T.let(
                :DOWNGRADE_TO_FREE,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Setup for the start of the subscription
          module SubscriptionStartSetup
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLAN_SELECTION =
              T.let(
                :PLAN_SELECTION,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )
            TRIAL_PERIOD =
              T.let(
                :TRIAL_PERIOD,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )
            FREE_PLAN =
              T.let(
                :FREE_PLAN,
                Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup::TaggedSymbol
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
