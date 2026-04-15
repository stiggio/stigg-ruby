# typed: strong

module Stigg
  module Models
    module Internal
      module Beta
        class EventQueueProvisionParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::Internal::Beta::EventQueueProvisionParams,
                Stigg::Internal::AnyHash
              )
            end

          # AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          sig do
            returns(
              Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::OrSymbol
            )
          end
          attr_accessor :region

          # Additional IAM role ARNs allowed to assume the external role for queue access
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :allowed_assume_role_arns

          sig { params(allowed_assume_role_arns: T::Array[String]).void }
          attr_writer :allowed_assume_role_arns

          # Whether to create separate low-priority queues for standard topic events
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :create_low_priority_queues

          sig { params(create_low_priority_queues: T::Boolean).void }
          attr_writer :create_low_priority_queues

          # Event types to subscribe to. Defaults to entitlements, measurements, and
          # migrations.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::OrSymbol
                ]
              )
            )
          end
          attr_reader :event_types

          sig do
            params(
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::OrSymbol
                ]
            ).void
          end
          attr_writer :event_types

          # Optional suffix to allow multiple queues for the same environment and region
          sig { returns(T.nilable(String)) }
          attr_reader :suffix

          sig { params(suffix: String).void }
          attr_writer :suffix

          sig do
            params(
              region:
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::OrSymbol,
              allowed_assume_role_arns: T::Array[String],
              create_low_priority_queues: T::Boolean,
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::OrSymbol
                ],
              suffix: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
            region:,
            # Additional IAM role ARNs allowed to assume the external role for queue access
            allowed_assume_role_arns: nil,
            # Whether to create separate low-priority queues for standard topic events
            create_low_priority_queues: nil,
            # Event types to subscribe to. Defaults to entitlements, measurements, and
            # migrations.
            event_types: nil,
            # Optional suffix to allow multiple queues for the same environment and region
            suffix: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                region:
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::OrSymbol,
                allowed_assume_role_arns: T::Array[String],
                create_low_priority_queues: T::Boolean,
                event_types:
                  T::Array[
                    Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::OrSymbol
                  ],
                suffix: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          # AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          module Region
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            US_EAST_1 =
              T.let(
                :"us-east-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            US_EAST_2 =
              T.let(
                :"us-east-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            US_WEST_1 =
              T.let(
                :"us-west-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            US_WEST_2 =
              T.let(
                :"us-west-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            CA_CENTRAL_1 =
              T.let(
                :"ca-central-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_WEST_1 =
              T.let(
                :"eu-west-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_WEST_2 =
              T.let(
                :"eu-west-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_WEST_3 =
              T.let(
                :"eu-west-3",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_CENTRAL_1 =
              T.let(
                :"eu-central-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_CENTRAL_2 =
              T.let(
                :"eu-central-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_NORTH_1 =
              T.let(
                :"eu-north-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_SOUTH_1 =
              T.let(
                :"eu-south-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            EU_SOUTH_2 =
              T.let(
                :"eu-south-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_SOUTHEAST_1 =
              T.let(
                :"ap-southeast-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_SOUTHEAST_2 =
              T.let(
                :"ap-southeast-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_SOUTHEAST_3 =
              T.let(
                :"ap-southeast-3",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_NORTHEAST_1 =
              T.let(
                :"ap-northeast-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_NORTHEAST_2 =
              T.let(
                :"ap-northeast-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_NORTHEAST_3 =
              T.let(
                :"ap-northeast-3",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_SOUTH_1 =
              T.let(
                :"ap-south-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_SOUTH_2 =
              T.let(
                :"ap-south-2",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AP_EAST_1 =
              T.let(
                :"ap-east-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            SA_EAST_1 =
              T.let(
                :"sa-east-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            AF_SOUTH_1 =
              T.let(
                :"af-south-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            ME_SOUTH_1 =
              T.let(
                :"me-south-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            ME_CENTRAL_1 =
              T.let(
                :"me-central-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )
            IL_CENTRAL_1 =
              T.let(
                :"il-central-1",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module EventType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MEMBER_INVITED =
              T.let(
                :MEMBER_INVITED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_SUBSCRIPTION =
              T.let(
                :SYNC_SUBSCRIPTION,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_CREDIT_GRANT =
              T.let(
                :SYNC_CREDIT_GRANT,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_CREATED =
              T.let(
                :CUSTOMER_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_UPDATED =
              T.let(
                :CUSTOMER_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_DELETED =
              T.let(
                :CUSTOMER_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_CUSTOMER =
              T.let(
                :SYNC_CUSTOMER,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_CREATED =
              T.let(
                :SUBSCRIPTION_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_CANCELED =
              T.let(
                :SUBSCRIPTION_CANCELED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_EXPIRED =
              T.let(
                :SUBSCRIPTION_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_UPDATED =
              T.let(
                :SUBSCRIPTION_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_STARTED =
              T.let(
                :SUBSCRIPTION_TRIAL_STARTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_EXPIRED =
              T.let(
                :SUBSCRIPTION_TRIAL_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_CONVERTED =
              T.let(
                :SUBSCRIPTION_TRIAL_CONVERTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_ENDS_SOON =
              T.let(
                :SUBSCRIPTION_TRIAL_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_SUBSCRIPTION_USAGE =
              T.let(
                :SYNC_SUBSCRIPTION_USAGE,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_USAGE_UPDATED =
              T.let(
                :SUBSCRIPTION_USAGE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_SPENT_LIMIT_EXCEEDED =
              T.let(
                :SUBSCRIPTION_SPENT_LIMIT_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREATE_SUBSCRIPTION_FAILED =
              T.let(
                :CREATE_SUBSCRIPTION_FAILED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PLAN_CREATED =
              T.let(
                :PLAN_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PLAN_UPDATED =
              T.let(
                :PLAN_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PLAN_DELETED =
              T.let(
                :PLAN_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ADDON_CREATED =
              T.let(
                :ADDON_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ADDON_UPDATED =
              T.let(
                :ADDON_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ADDON_DELETED =
              T.let(
                :ADDON_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_PACKAGE =
              T.let(
                :SYNC_PACKAGE,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_CREATED =
              T.let(
                :FEATURE_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_UPDATED =
              T.let(
                :FEATURE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_DELETED =
              T.let(
                :FEATURE_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_ARCHIVED =
              T.let(
                :FEATURE_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            API_KEY_CREATED =
              T.let(
                :API_KEY_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            API_KEY_UPDATED =
              T.let(
                :API_KEY_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            API_KEY_ROTATED =
              T.let(
                :API_KEY_ROTATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            API_KEY_REVOKED =
              T.let(
                :API_KEY_REVOKED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_REQUESTED =
              T.let(
                :ENTITLEMENT_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_GRANTED =
              T.let(
                :ENTITLEMENT_GRANTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_DENIED =
              T.let(
                :ENTITLEMENT_DENIED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            MEASUREMENT_REPORTED =
              T.let(
                :MEASUREMENT_REPORTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            USAGE_THRESHOLD_EXCEEDED =
              T.let(
                :USAGE_THRESHOLD_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_GRANTED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_GRANTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_REVOKED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_REVOKED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_UPDATED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_EXPIRED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_ENDS_SOON =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PACKAGE_PUBLISHED =
              T.let(
                :PACKAGE_PUBLISHED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            MIGRATE_SUBSCRIPTIONS =
              T.let(
                :MIGRATE_SUBSCRIPTIONS,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH =
              T.let(
                :RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES =
              T.let(
                :MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ENTITLEMENTS_UPDATED =
              T.let(
                :ENTITLEMENTS_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            RESYNC_INTEGRATION_TRIGGERED =
              T.let(
                :RESYNC_INTEGRATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            COUPON_CREATED =
              T.let(
                :COUPON_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            COUPON_UPDATED =
              T.let(
                :COUPON_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CATALOG_TRIGGERED =
              T.let(
                :IMPORT_INTEGRATION_CATALOG_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED =
              T.let(
                :IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            INCOMING_STRIPE_WEBHOOK =
              T.let(
                :INCOMING_STRIPE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            INCOMING_AWS_MARKETPLACE_WEBHOOK =
              T.let(
                :INCOMING_AWS_MARKETPLACE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            INCOMING_ZUORA_WEBHOOK =
              T.let(
                :INCOMING_ZUORA_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            INCOMING_DOGGO_WEBHOOK =
              T.let(
                :INCOMING_DOGGO_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            INCOMING_APP_STORE_WEBHOOK =
              T.let(
                :INCOMING_APP_STORE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            RESYNC_INTEGRATION =
              T.let(
                :RESYNC_INTEGRATION,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_COUPON =
              T.let(
                :SYNC_COUPON,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CATALOG =
              T.let(
                :IMPORT_INTEGRATION_CATALOG,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CUSTOMERS =
              T.let(
                :IMPORT_INTEGRATION_CUSTOMERS,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SYNC_FAILED =
              T.let(
                :SYNC_FAILED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_PAYMENT_FAILED =
              T.let(
                :CUSTOMER_PAYMENT_FAILED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PRODUCT_CREATED =
              T.let(
                :PRODUCT_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PRODUCT_UPDATED =
              T.let(
                :PRODUCT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PRODUCT_DELETED =
              T.let(
                :PRODUCT_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PRODUCT_UNARCHIVED =
              T.let(
                :PRODUCT_UNARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PACKAGE_GROUP_CREATED =
              T.let(
                :PACKAGE_GROUP_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PACKAGE_GROUP_UPDATED =
              T.let(
                :PACKAGE_GROUP_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            ENVIRONMENT_DELETED =
              T.let(
                :ENVIRONMENT_DELETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            WIDGET_CONFIGURATION_UPDATED =
              T.let(
                :WIDGET_CONFIGURATION_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_DATA_RESYNC =
              T.let(
                :EDGE_API_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_DOGGO_RESYNC =
              T.let(
                :EDGE_API_DOGGO_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC =
              T.let(
                :EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED =
              T.let(
                :PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED =
              T.let(
                :CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            RECALCULATE_RESOURCE_ENTITLEMENTS =
              T.let(
                :RECALCULATE_RESOURCE_ENTITLEMENTS,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED =
              T.let(
                :"CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED[",
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            RECALCULATE_ENTITLEMENTS_TRIGGERED =
              T.let(
                :RECALCULATE_ENTITLEMENTS_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED =
              T.let(
                :IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_CUSTOMER_DATA_RESYNC =
              T.let(
                :EDGE_API_CUSTOMER_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_SUBSCRIPTIONS_DATA_RESYNC =
              T.let(
                :EDGE_API_SUBSCRIPTIONS_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC =
              T.let(
                :EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_PRODUCT_CACHE_DATA_RESYNC =
              T.let(
                :EDGE_API_PRODUCT_CACHE_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_PLAN_CACHE_DATA_RESYNC =
              T.let(
                :EDGE_API_PLAN_CACHE_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EDGE_API_CUSTOM_CURRENCY_CACHE_DATA_RESYNC =
              T.let(
                :EDGE_API_CUSTOM_CURRENCY_CACHE_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            REPLAY_WEBHOOK_EVENT =
              T.let(
                :REPLAY_WEBHOOK_EVENT,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTIONS_MIGRATED =
              T.let(
                :SUBSCRIPTIONS_MIGRATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTIONS_MIGRATION_TRIGGERED =
              T.let(
                :SUBSCRIPTIONS_MIGRATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_BILLING_MONTH_ENDS_SOON =
              T.let(
                :SUBSCRIPTION_BILLING_MONTH_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_USAGE_CHARGE_TRIGGERED =
              T.let(
                :SUBSCRIPTION_USAGE_CHARGE_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            SCHEDULER_BATCH =
              T.let(
                :SCHEDULER_BATCH,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EVENT_LOG_CREATED =
              T.let(
                :EVENT_LOG_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_CREATED =
              T.let(
                :CREDIT_GRANT_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_EXPIRED =
              T.let(
                :CREDIT_GRANT_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_VOIDED =
              T.let(
                :CREDIT_GRANT_VOIDED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_UPDATED =
              T.let(
                :CREDIT_GRANT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_DEPLETED =
              T.let(
                :CREDIT_GRANT_DEPLETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_BALANCE_LOW =
              T.let(
                :CREDIT_GRANT_BALANCE_LOW,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_UPDATED =
              T.let(
                :CREDIT_BALANCE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_DEPLETED =
              T.let(
                :CREDIT_BALANCE_DEPLETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_LOW =
              T.let(
                :CREDIT_BALANCE_LOW,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_PROCESS_COMPLETED =
              T.let(
                :CREDIT_GRANT_PROCESS_COMPLETED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_THRESHOLD_BREACH =
              T.let(
                :AUTOMATIC_RECHARGE_THRESHOLD_BREACH,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED =
              T.let(
                :AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED =
              T.let(
                :CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED =
              T.let(
                :AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_CREATED =
              T.let(
                :FEATURE_GROUP_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_UPDATED =
              T.let(
                :FEATURE_GROUP_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_ARCHIVED =
              T.let(
                :FEATURE_GROUP_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_UN_ARCHIVED =
              T.let(
                :FEATURE_GROUP_UN_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOM_CURRENCY_CREATED =
              T.let(
                :CUSTOM_CURRENCY_CREATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOM_CURRENCY_UPDATED =
              T.let(
                :CUSTOM_CURRENCY_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOM_CURRENCY_ARCHIVED =
              T.let(
                :CUSTOM_CURRENCY_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            CUSTOM_CURRENCY_UNARCHIVED =
              T.let(
                :CUSTOM_CURRENCY_UNARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            STRIPE_APP_DRAWER_VIEWED =
              T.let(
                :STRIPE_APP_DRAWER_VIEWED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EVENT_QUEUE_PROVISIONING_REQUESTED =
              T.let(
                :EVENT_QUEUE_PROVISIONING_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )
            EVENT_QUEUE_DEPROVISIONING_REQUESTED =
              T.let(
                :EVENT_QUEUE_DEPROVISIONING_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::TaggedSymbol
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
