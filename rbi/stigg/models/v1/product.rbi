# typed: strong

module Stigg
  module Models
    module V1
      class Product < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Stigg::V1::Product, Stigg::Internal::AnyHash) }

        # Product configuration object
        sig { returns(Stigg::V1::Product::Data) }
        attr_reader :data

        sig { params(data: Stigg::V1::Product::Data::OrHash).void }
        attr_writer :data

        # Response object
        sig do
          params(data: Stigg::V1::Product::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Product configuration object
          data:
        )
        end

        sig { override.returns({ data: Stigg::V1::Product::Data }) }
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Stigg::V1::Product::Data, Stigg::Internal::AnyHash)
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
          sig { returns(Stigg::V1::Product::Data::Status::TaggedSymbol) }
          attr_accessor :status

          # Timestamp of when the record was last updated
          sig { returns(Time) }
          attr_accessor :updated_at

          # Product behavior settings for subscription lifecycle management.
          sig { returns(T.nilable(Stigg::V1::Product::Data::ProductSettings)) }
          attr_reader :product_settings

          sig do
            params(
              product_settings:
                Stigg::V1::Product::Data::ProductSettings::OrHash
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
              status: Stigg::V1::Product::Data::Status::OrSymbol,
              updated_at: Time,
              product_settings:
                Stigg::V1::Product::Data::ProductSettings::OrHash
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
                status: Stigg::V1::Product::Data::Status::TaggedSymbol,
                updated_at: Time,
                product_settings: Stigg::V1::Product::Data::ProductSettings
              }
            )
          end
          def to_hash
          end

          # The status of the product
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Stigg::V1::Product::Data::Status) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLISHED =
              T.let(:PUBLISHED, Stigg::V1::Product::Data::Status::TaggedSymbol)
            ARCHIVED =
              T.let(:ARCHIVED, Stigg::V1::Product::Data::Status::TaggedSymbol)

            sig do
              override.returns(
                T::Array[Stigg::V1::Product::Data::Status::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          class ProductSettings < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Product::Data::ProductSettings,
                  Stigg::Internal::AnyHash
                )
              end

            # Time when the subscription will be cancelled
            sig do
              returns(
                Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )
            end
            attr_accessor :subscription_cancellation_time

            # Setup for the end of the subscription
            sig do
              returns(
                Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::TaggedSymbol
              )
            end
            attr_accessor :subscription_end_setup

            # Setup for the start of the subscription
            sig do
              returns(
                Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol
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
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::OrSymbol,
                subscription_end_setup:
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::OrSymbol,
                subscription_start_setup:
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::OrSymbol,
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
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol,
                  subscription_end_setup:
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::TaggedSymbol,
                  subscription_start_setup:
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol,
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
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              END_OF_BILLING_PERIOD =
                T.let(
                  :END_OF_BILLING_PERIOD,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
                )
              IMMEDIATE =
                T.let(
                  :IMMEDIATE,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
                )
              SPECIFIC_DATE =
                T.let(
                  :SPECIFIC_DATE,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
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
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DOWNGRADE_TO_FREE =
                T.let(
                  :DOWNGRADE_TO_FREE,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::TaggedSymbol
                )
              CANCEL_SUBSCRIPTION =
                T.let(
                  :CANCEL_SUBSCRIPTION,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionEndSetup::TaggedSymbol
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
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLAN_SELECTION =
                T.let(
                  :PLAN_SELECTION,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol
                )
              TRIAL_PERIOD =
                T.let(
                  :TRIAL_PERIOD,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol
                )
              FREE_PLAN =
                T.let(
                  :FREE_PLAN,
                  Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Product::Data::ProductSettings::SubscriptionStartSetup::TaggedSymbol
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
end
