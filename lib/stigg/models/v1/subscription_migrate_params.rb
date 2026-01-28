# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#migrate
      class SubscriptionMigrateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute subscription_migration_time
        #   When to migrate (immediate or period end)
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime, nil]
        optional :subscription_migration_time,
                 enum: -> { Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime },
                 api_name: :subscriptionMigrationTime

        # @!method initialize(subscription_migration_time: nil, request_options: {})
        #   @param subscription_migration_time [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime] When to migrate (immediate or period end)
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # When to migrate (immediate or period end)
        module SubscriptionMigrationTime
          extend Stigg::Internal::Type::Enum

          END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
          IMMEDIATE = :IMMEDIATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
