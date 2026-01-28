# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionMigrateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::SubscriptionMigrateParams,
              Stigg::Internal::AnyHash
            )
          end

        # When to migrate (immediate or period end)
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol
            )
          )
        end
        attr_reader :subscription_migration_time

        sig do
          params(
            subscription_migration_time:
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol
          ).void
        end
        attr_writer :subscription_migration_time

        sig do
          params(
            subscription_migration_time:
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When to migrate (immediate or period end)
          subscription_migration_time: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscription_migration_time:
                Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # When to migrate (immediate or period end)
        module SubscriptionMigrationTime
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::TaggedSymbol
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
