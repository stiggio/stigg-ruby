# typed: strong

module Stigg
  module Models
    module Internal
      module Beta
        class EventQueueUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::Internal::Beta::EventQueueUpdateParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :queue_name

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :allowed_assume_role_arns

          sig { params(allowed_assume_role_arns: T::Array[String]).void }
          attr_writer :allowed_assume_role_arns

          # Whether to create separate low-priority queues for standard topic events
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :create_low_priority_queues

          sig { params(create_low_priority_queues: T::Boolean).void }
          attr_writer :create_low_priority_queues

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::OrSymbol
                ]
              )
            )
          end
          attr_reader :event_types

          sig do
            params(
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::OrSymbol
                ]
            ).void
          end
          attr_writer :event_types

          sig do
            params(
              queue_name: String,
              allowed_assume_role_arns: T::Array[String],
              create_low_priority_queues: T::Boolean,
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::OrSymbol
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            queue_name:,
            allowed_assume_role_arns: nil,
            # Whether to create separate low-priority queues for standard topic events
            create_low_priority_queues: nil,
            event_types: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                queue_name: String,
                allowed_assume_role_arns: T::Array[String],
                create_low_priority_queues: T::Boolean,
                event_types:
                  T::Array[
                    Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::OrSymbol
                  ],
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          module EventType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MEMBER_INVITED =
              T.let(
                :MEMBER_INVITED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_SUBSCRIPTION =
              T.let(
                :SYNC_SUBSCRIPTION,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_CREDIT_GRANT =
              T.let(
                :SYNC_CREDIT_GRANT,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_CREATED =
              T.let(
                :CUSTOMER_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_UPDATED =
              T.let(
                :CUSTOMER_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_DELETED =
              T.let(
                :CUSTOMER_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_CUSTOMER =
              T.let(
                :SYNC_CUSTOMER,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_CREATED =
              T.let(
                :SUBSCRIPTION_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_CANCELED =
              T.let(
                :SUBSCRIPTION_CANCELED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_EXPIRED =
              T.let(
                :SUBSCRIPTION_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_UPDATED =
              T.let(
                :SUBSCRIPTION_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_STARTED =
              T.let(
                :SUBSCRIPTION_TRIAL_STARTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_EXPIRED =
              T.let(
                :SUBSCRIPTION_TRIAL_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_CONVERTED =
              T.let(
                :SUBSCRIPTION_TRIAL_CONVERTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_TRIAL_ENDS_SOON =
              T.let(
                :SUBSCRIPTION_TRIAL_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_SUBSCRIPTION_USAGE =
              T.let(
                :SYNC_SUBSCRIPTION_USAGE,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_USAGE_UPDATED =
              T.let(
                :SUBSCRIPTION_USAGE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_SPENT_LIMIT_EXCEEDED =
              T.let(
                :SUBSCRIPTION_SPENT_LIMIT_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREATE_SUBSCRIPTION_FAILED =
              T.let(
                :CREATE_SUBSCRIPTION_FAILED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PLAN_CREATED =
              T.let(
                :PLAN_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PLAN_UPDATED =
              T.let(
                :PLAN_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PLAN_DELETED =
              T.let(
                :PLAN_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ADDON_CREATED =
              T.let(
                :ADDON_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ADDON_UPDATED =
              T.let(
                :ADDON_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ADDON_DELETED =
              T.let(
                :ADDON_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_PACKAGE =
              T.let(
                :SYNC_PACKAGE,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_CREATED =
              T.let(
                :FEATURE_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_UPDATED =
              T.let(
                :FEATURE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_DELETED =
              T.let(
                :FEATURE_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_ARCHIVED =
              T.let(
                :FEATURE_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            API_KEY_CREATED =
              T.let(
                :API_KEY_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            API_KEY_UPDATED =
              T.let(
                :API_KEY_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            API_KEY_ROTATED =
              T.let(
                :API_KEY_ROTATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            API_KEY_REVOKED =
              T.let(
                :API_KEY_REVOKED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_REQUESTED =
              T.let(
                :ENTITLEMENT_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_GRANTED =
              T.let(
                :ENTITLEMENT_GRANTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ENTITLEMENT_DENIED =
              T.let(
                :ENTITLEMENT_DENIED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            MEASUREMENT_REPORTED =
              T.let(
                :MEASUREMENT_REPORTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            USAGE_THRESHOLD_EXCEEDED =
              T.let(
                :USAGE_THRESHOLD_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_GRANTED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_GRANTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_REVOKED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_REVOKED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_UPDATED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_EXPIRED =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PROMOTIONAL_ENTITLEMENT_ENDS_SOON =
              T.let(
                :PROMOTIONAL_ENTITLEMENT_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PACKAGE_PUBLISHED =
              T.let(
                :PACKAGE_PUBLISHED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            MIGRATE_SUBSCRIPTIONS =
              T.let(
                :MIGRATE_SUBSCRIPTIONS,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH =
              T.let(
                :RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES =
              T.let(
                :MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ENTITLEMENTS_UPDATED =
              T.let(
                :ENTITLEMENTS_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            RESYNC_INTEGRATION_TRIGGERED =
              T.let(
                :RESYNC_INTEGRATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            COUPON_CREATED =
              T.let(
                :COUPON_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            COUPON_UPDATED =
              T.let(
                :COUPON_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CATALOG_TRIGGERED =
              T.let(
                :IMPORT_INTEGRATION_CATALOG_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED =
              T.let(
                :IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            INCOMING_STRIPE_WEBHOOK =
              T.let(
                :INCOMING_STRIPE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            INCOMING_AWS_MARKETPLACE_WEBHOOK =
              T.let(
                :INCOMING_AWS_MARKETPLACE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            INCOMING_ZUORA_WEBHOOK =
              T.let(
                :INCOMING_ZUORA_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            INCOMING_DOGGO_WEBHOOK =
              T.let(
                :INCOMING_DOGGO_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            INCOMING_APP_STORE_WEBHOOK =
              T.let(
                :INCOMING_APP_STORE_WEBHOOK,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            RESYNC_INTEGRATION =
              T.let(
                :RESYNC_INTEGRATION,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_COUPON =
              T.let(
                :SYNC_COUPON,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CATALOG =
              T.let(
                :IMPORT_INTEGRATION_CATALOG,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            IMPORT_INTEGRATION_CUSTOMERS =
              T.let(
                :IMPORT_INTEGRATION_CUSTOMERS,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SYNC_FAILED =
              T.let(
                :SYNC_FAILED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_PAYMENT_FAILED =
              T.let(
                :CUSTOMER_PAYMENT_FAILED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PRODUCT_CREATED =
              T.let(
                :PRODUCT_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PRODUCT_UPDATED =
              T.let(
                :PRODUCT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PRODUCT_DELETED =
              T.let(
                :PRODUCT_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PRODUCT_UNARCHIVED =
              T.let(
                :PRODUCT_UNARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PACKAGE_GROUP_CREATED =
              T.let(
                :PACKAGE_GROUP_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PACKAGE_GROUP_UPDATED =
              T.let(
                :PACKAGE_GROUP_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            ENVIRONMENT_DELETED =
              T.let(
                :ENVIRONMENT_DELETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            WIDGET_CONFIGURATION_UPDATED =
              T.let(
                :WIDGET_CONFIGURATION_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_DATA_RESYNC =
              T.let(
                :EDGE_API_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_DOGGO_RESYNC =
              T.let(
                :EDGE_API_DOGGO_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC =
              T.let(
                :EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED =
              T.let(
                :PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED =
              T.let(
                :CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            RECALCULATE_RESOURCE_ENTITLEMENTS =
              T.let(
                :RECALCULATE_RESOURCE_ENTITLEMENTS,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED =
              T.let(
                :"CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED[",
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            RECALCULATE_ENTITLEMENTS_TRIGGERED =
              T.let(
                :RECALCULATE_ENTITLEMENTS_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED =
              T.let(
                :IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_CUSTOMER_DATA_RESYNC =
              T.let(
                :EDGE_API_CUSTOMER_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_SUBSCRIPTIONS_DATA_RESYNC =
              T.let(
                :EDGE_API_SUBSCRIPTIONS_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC =
              T.let(
                :EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_PRODUCT_CACHE_DATA_RESYNC =
              T.let(
                :EDGE_API_PRODUCT_CACHE_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EDGE_API_PLAN_CACHE_DATA_RESYNC =
              T.let(
                :EDGE_API_PLAN_CACHE_DATA_RESYNC,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            REPLAY_WEBHOOK_EVENT =
              T.let(
                :REPLAY_WEBHOOK_EVENT,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTIONS_MIGRATED =
              T.let(
                :SUBSCRIPTIONS_MIGRATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTIONS_MIGRATION_TRIGGERED =
              T.let(
                :SUBSCRIPTIONS_MIGRATION_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_BILLING_MONTH_ENDS_SOON =
              T.let(
                :SUBSCRIPTION_BILLING_MONTH_ENDS_SOON,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SUBSCRIPTION_USAGE_CHARGE_TRIGGERED =
              T.let(
                :SUBSCRIPTION_USAGE_CHARGE_TRIGGERED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            SCHEDULER_BATCH =
              T.let(
                :SCHEDULER_BATCH,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EVENT_LOG_CREATED =
              T.let(
                :EVENT_LOG_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_CREATED =
              T.let(
                :CREDIT_GRANT_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_EXPIRED =
              T.let(
                :CREDIT_GRANT_EXPIRED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_VOIDED =
              T.let(
                :CREDIT_GRANT_VOIDED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_UPDATED =
              T.let(
                :CREDIT_GRANT_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_DEPLETED =
              T.let(
                :CREDIT_GRANT_DEPLETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_BALANCE_LOW =
              T.let(
                :CREDIT_GRANT_BALANCE_LOW,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_UPDATED =
              T.let(
                :CREDIT_BALANCE_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_DEPLETED =
              T.let(
                :CREDIT_BALANCE_DEPLETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_BALANCE_LOW =
              T.let(
                :CREDIT_BALANCE_LOW,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDIT_GRANT_PROCESS_COMPLETED =
              T.let(
                :CREDIT_GRANT_PROCESS_COMPLETED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_THRESHOLD_BREACH =
              T.let(
                :AUTOMATIC_RECHARGE_THRESHOLD_BREACH,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED =
              T.let(
                :AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED =
              T.let(
                :CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED =
              T.let(
                :AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_CREATED =
              T.let(
                :FEATURE_GROUP_CREATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_UPDATED =
              T.let(
                :FEATURE_GROUP_UPDATED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_ARCHIVED =
              T.let(
                :FEATURE_GROUP_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            FEATURE_GROUP_UN_ARCHIVED =
              T.let(
                :FEATURE_GROUP_UN_ARCHIVED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            STRIPE_APP_DRAWER_VIEWED =
              T.let(
                :STRIPE_APP_DRAWER_VIEWED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EVENT_QUEUE_PROVISIONING_REQUESTED =
              T.let(
                :EVENT_QUEUE_PROVISIONING_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )
            EVENT_QUEUE_DEPROVISIONING_REQUESTED =
              T.let(
                :EVENT_QUEUE_DEPROVISIONING_REQUESTED,
                Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::TaggedSymbol
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
