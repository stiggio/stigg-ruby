# frozen_string_literal: true

module Stigg
  module Models
    module Internal
      module Beta
        # @see Stigg::Resources::Internal::Beta::EventQueues#provision
        class EventQueueProvisionParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute region
          #   AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          #
          #   @return [Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region]
          required :region, enum: -> { Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region }

          # @!attribute allowed_assume_role_arns
          #   Additional IAM role ARNs allowed to assume the external role for queue access
          #
          #   @return [Array<String>, nil]
          optional :allowed_assume_role_arns,
                   Stigg::Internal::Type::ArrayOf[String],
                   api_name: :allowedAssumeRoleArns

          # @!attribute create_low_priority_queues
          #   Whether to create separate low-priority queues for standard topic events
          #
          #   @return [Boolean, nil]
          optional :create_low_priority_queues,
                   Stigg::Internal::Type::Boolean,
                   api_name: :createLowPriorityQueues

          # @!attribute event_types
          #   Event types to subscribe to. Defaults to entitlements, measurements, and
          #   migrations.
          #
          #   @return [Array<Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType>, nil]
          optional :event_types,
                   -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType] },
                   api_name: :eventTypes

          # @!attribute suffix
          #   Optional suffix to allow multiple queues for the same environment and region
          #
          #   @return [String, nil]
          optional :suffix, String

          # @!method initialize(region:, allowed_assume_role_arns: nil, create_low_priority_queues: nil, event_types: nil, suffix: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::Internal::Beta::EventQueueProvisionParams} for more details.
          #
          #   @param region [Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region] AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          #
          #   @param allowed_assume_role_arns [Array<String>] Additional IAM role ARNs allowed to assume the external role for queue access
          #
          #   @param create_low_priority_queues [Boolean] Whether to create separate low-priority queues for standard topic events
          #
          #   @param event_types [Array<Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType>] Event types to subscribe to. Defaults to entitlements, measurements, and migrati
          #
          #   @param suffix [String] Optional suffix to allow multiple queues for the same environment and region
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          module Region
            extend Stigg::Internal::Type::Enum

            US_EAST_1 = :"us-east-1"
            US_EAST_2 = :"us-east-2"
            US_WEST_1 = :"us-west-1"
            US_WEST_2 = :"us-west-2"
            CA_CENTRAL_1 = :"ca-central-1"
            EU_WEST_1 = :"eu-west-1"
            EU_WEST_2 = :"eu-west-2"
            EU_WEST_3 = :"eu-west-3"
            EU_CENTRAL_1 = :"eu-central-1"
            EU_CENTRAL_2 = :"eu-central-2"
            EU_NORTH_1 = :"eu-north-1"
            EU_SOUTH_1 = :"eu-south-1"
            EU_SOUTH_2 = :"eu-south-2"
            AP_SOUTHEAST_1 = :"ap-southeast-1"
            AP_SOUTHEAST_2 = :"ap-southeast-2"
            AP_SOUTHEAST_3 = :"ap-southeast-3"
            AP_NORTHEAST_1 = :"ap-northeast-1"
            AP_NORTHEAST_2 = :"ap-northeast-2"
            AP_NORTHEAST_3 = :"ap-northeast-3"
            AP_SOUTH_1 = :"ap-south-1"
            AP_SOUTH_2 = :"ap-south-2"
            AP_EAST_1 = :"ap-east-1"
            SA_EAST_1 = :"sa-east-1"
            AF_SOUTH_1 = :"af-south-1"
            ME_SOUTH_1 = :"me-south-1"
            ME_CENTRAL_1 = :"me-central-1"
            IL_CENTRAL_1 = :"il-central-1"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module EventType
            extend Stigg::Internal::Type::Enum

            MEMBER_INVITED = :MEMBER_INVITED
            SYNC_SUBSCRIPTION = :SYNC_SUBSCRIPTION
            SYNC_CREDIT_GRANT = :SYNC_CREDIT_GRANT
            CUSTOMER_CREATED = :CUSTOMER_CREATED
            CUSTOMER_UPDATED = :CUSTOMER_UPDATED
            CUSTOMER_DELETED = :CUSTOMER_DELETED
            SYNC_CUSTOMER = :SYNC_CUSTOMER
            SUBSCRIPTION_CREATED = :SUBSCRIPTION_CREATED
            SUBSCRIPTION_CANCELED = :SUBSCRIPTION_CANCELED
            SUBSCRIPTION_EXPIRED = :SUBSCRIPTION_EXPIRED
            SUBSCRIPTION_UPDATED = :SUBSCRIPTION_UPDATED
            SUBSCRIPTION_TRIAL_STARTED = :SUBSCRIPTION_TRIAL_STARTED
            SUBSCRIPTION_TRIAL_EXPIRED = :SUBSCRIPTION_TRIAL_EXPIRED
            SUBSCRIPTION_TRIAL_CONVERTED = :SUBSCRIPTION_TRIAL_CONVERTED
            SUBSCRIPTION_TRIAL_ENDS_SOON = :SUBSCRIPTION_TRIAL_ENDS_SOON
            SYNC_SUBSCRIPTION_USAGE = :SYNC_SUBSCRIPTION_USAGE
            SUBSCRIPTION_USAGE_UPDATED = :SUBSCRIPTION_USAGE_UPDATED
            SUBSCRIPTION_SPENT_LIMIT_EXCEEDED = :SUBSCRIPTION_SPENT_LIMIT_EXCEEDED
            CREATE_SUBSCRIPTION_FAILED = :CREATE_SUBSCRIPTION_FAILED
            PLAN_CREATED = :PLAN_CREATED
            PLAN_UPDATED = :PLAN_UPDATED
            PLAN_DELETED = :PLAN_DELETED
            ADDON_CREATED = :ADDON_CREATED
            ADDON_UPDATED = :ADDON_UPDATED
            ADDON_DELETED = :ADDON_DELETED
            SYNC_PACKAGE = :SYNC_PACKAGE
            FEATURE_CREATED = :FEATURE_CREATED
            FEATURE_UPDATED = :FEATURE_UPDATED
            FEATURE_DELETED = :FEATURE_DELETED
            FEATURE_ARCHIVED = :FEATURE_ARCHIVED
            API_KEY_CREATED = :API_KEY_CREATED
            API_KEY_UPDATED = :API_KEY_UPDATED
            API_KEY_ROTATED = :API_KEY_ROTATED
            API_KEY_REVOKED = :API_KEY_REVOKED
            ENTITLEMENT_REQUESTED = :ENTITLEMENT_REQUESTED
            ENTITLEMENT_GRANTED = :ENTITLEMENT_GRANTED
            ENTITLEMENT_DENIED = :ENTITLEMENT_DENIED
            MEASUREMENT_REPORTED = :MEASUREMENT_REPORTED
            USAGE_THRESHOLD_EXCEEDED = :USAGE_THRESHOLD_EXCEEDED
            PROMOTIONAL_ENTITLEMENT_GRANTED = :PROMOTIONAL_ENTITLEMENT_GRANTED
            PROMOTIONAL_ENTITLEMENT_REVOKED = :PROMOTIONAL_ENTITLEMENT_REVOKED
            PROMOTIONAL_ENTITLEMENT_UPDATED = :PROMOTIONAL_ENTITLEMENT_UPDATED
            PROMOTIONAL_ENTITLEMENT_EXPIRED = :PROMOTIONAL_ENTITLEMENT_EXPIRED
            PROMOTIONAL_ENTITLEMENT_ENDS_SOON = :PROMOTIONAL_ENTITLEMENT_ENDS_SOON
            PACKAGE_PUBLISHED = :PACKAGE_PUBLISHED
            MIGRATE_SUBSCRIPTIONS = :MIGRATE_SUBSCRIPTIONS
            RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH = :RECALCULATE_MIGRATED_ENTITLEMENTS_BATCH
            MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES = :MIGRATE_SUBSCRIPTIONS_SCHEDULED_UPDATES
            ENTITLEMENTS_UPDATED = :ENTITLEMENTS_UPDATED
            RESYNC_INTEGRATION_TRIGGERED = :RESYNC_INTEGRATION_TRIGGERED
            COUPON_CREATED = :COUPON_CREATED
            COUPON_UPDATED = :COUPON_UPDATED
            IMPORT_INTEGRATION_CATALOG_TRIGGERED = :IMPORT_INTEGRATION_CATALOG_TRIGGERED
            IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED = :IMPORT_INTEGRATION_CUSTOMERS_TRIGGERED
            INCOMING_STRIPE_WEBHOOK = :INCOMING_STRIPE_WEBHOOK
            INCOMING_AWS_MARKETPLACE_WEBHOOK = :INCOMING_AWS_MARKETPLACE_WEBHOOK
            INCOMING_ZUORA_WEBHOOK = :INCOMING_ZUORA_WEBHOOK
            INCOMING_DOGGO_WEBHOOK = :INCOMING_DOGGO_WEBHOOK
            INCOMING_APP_STORE_WEBHOOK = :INCOMING_APP_STORE_WEBHOOK
            RESYNC_INTEGRATION = :RESYNC_INTEGRATION
            SYNC_COUPON = :SYNC_COUPON
            IMPORT_INTEGRATION_CATALOG = :IMPORT_INTEGRATION_CATALOG
            IMPORT_INTEGRATION_CUSTOMERS = :IMPORT_INTEGRATION_CUSTOMERS
            SYNC_FAILED = :SYNC_FAILED
            CUSTOMER_PAYMENT_FAILED = :CUSTOMER_PAYMENT_FAILED
            PRODUCT_CREATED = :PRODUCT_CREATED
            PRODUCT_UPDATED = :PRODUCT_UPDATED
            PRODUCT_DELETED = :PRODUCT_DELETED
            PRODUCT_UNARCHIVED = :PRODUCT_UNARCHIVED
            PACKAGE_GROUP_CREATED = :PACKAGE_GROUP_CREATED
            PACKAGE_GROUP_UPDATED = :PACKAGE_GROUP_UPDATED
            ENVIRONMENT_DELETED = :ENVIRONMENT_DELETED
            WIDGET_CONFIGURATION_UPDATED = :WIDGET_CONFIGURATION_UPDATED
            EDGE_API_DATA_RESYNC = :EDGE_API_DATA_RESYNC
            EDGE_API_DOGGO_RESYNC = :EDGE_API_DOGGO_RESYNC
            EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC = :EDGE_API_CLIENT_CONFIGURATION_DATA_RESYNC
            PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED = :PURGE_CUSTOMER_PERSISTENT_CACHE_REQUESTED
            CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED =
              :CUSTOMER_RESOURCE_ENTITLEMENT_CALCULATION_TRIGGERED
            RECALCULATE_RESOURCE_ENTITLEMENTS = :RECALCULATE_RESOURCE_ENTITLEMENTS
            CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED = :"CUSTOMER_ENTITLEMENT_CALCULATION_TRIGGERED["
            RECALCULATE_ENTITLEMENTS_TRIGGERED = :RECALCULATE_ENTITLEMENTS_TRIGGERED
            IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED = :IMPORT_SUBSCRIPTIONS_BULK_TRIGGERED
            EDGE_API_CUSTOMER_DATA_RESYNC = :EDGE_API_CUSTOMER_DATA_RESYNC
            EDGE_API_SUBSCRIPTIONS_DATA_RESYNC = :EDGE_API_SUBSCRIPTIONS_DATA_RESYNC
            EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC = :EDGE_API_PACKAGE_ENTITLEMENTS_DATA_RESYNC
            EDGE_API_PRODUCT_CACHE_DATA_RESYNC = :EDGE_API_PRODUCT_CACHE_DATA_RESYNC
            EDGE_API_PLAN_CACHE_DATA_RESYNC = :EDGE_API_PLAN_CACHE_DATA_RESYNC
            EDGE_API_CUSTOM_CURRENCY_CACHE_DATA_RESYNC = :EDGE_API_CUSTOM_CURRENCY_CACHE_DATA_RESYNC
            REPLAY_WEBHOOK_EVENT = :REPLAY_WEBHOOK_EVENT
            SUBSCRIPTIONS_MIGRATED = :SUBSCRIPTIONS_MIGRATED
            SUBSCRIPTIONS_MIGRATION_TRIGGERED = :SUBSCRIPTIONS_MIGRATION_TRIGGERED
            SUBSCRIPTION_BILLING_MONTH_ENDS_SOON = :SUBSCRIPTION_BILLING_MONTH_ENDS_SOON
            SUBSCRIPTION_USAGE_CHARGE_TRIGGERED = :SUBSCRIPTION_USAGE_CHARGE_TRIGGERED
            SCHEDULER_BATCH = :SCHEDULER_BATCH
            EVENT_LOG_CREATED = :EVENT_LOG_CREATED
            CREDIT_GRANT_CREATED = :CREDIT_GRANT_CREATED
            CREDIT_GRANT_EXPIRED = :CREDIT_GRANT_EXPIRED
            CREDIT_GRANT_VOIDED = :CREDIT_GRANT_VOIDED
            CREDIT_GRANT_UPDATED = :CREDIT_GRANT_UPDATED
            CREDIT_GRANT_DEPLETED = :CREDIT_GRANT_DEPLETED
            CREDIT_GRANT_BALANCE_LOW = :CREDIT_GRANT_BALANCE_LOW
            CREDIT_BALANCE_UPDATED = :CREDIT_BALANCE_UPDATED
            CREDIT_BALANCE_DEPLETED = :CREDIT_BALANCE_DEPLETED
            CREDIT_BALANCE_LOW = :CREDIT_BALANCE_LOW
            CREDIT_GRANT_PROCESS_COMPLETED = :CREDIT_GRANT_PROCESS_COMPLETED
            AUTOMATIC_RECHARGE_THRESHOLD_BREACH = :AUTOMATIC_RECHARGE_THRESHOLD_BREACH
            AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED = :AUTOMATIC_RECHARGE_OPERATION_ATTEMPTED
            CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED = :CREDITS_AUTOMATIC_RECHARGE_LIMIT_EXCEEDED
            AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED = :AUTOMATIC_RECHARGE_CONFIGURATION_CHANGED
            FEATURE_GROUP_CREATED = :FEATURE_GROUP_CREATED
            FEATURE_GROUP_UPDATED = :FEATURE_GROUP_UPDATED
            FEATURE_GROUP_ARCHIVED = :FEATURE_GROUP_ARCHIVED
            FEATURE_GROUP_UN_ARCHIVED = :FEATURE_GROUP_UN_ARCHIVED
            STRIPE_APP_DRAWER_VIEWED = :STRIPE_APP_DRAWER_VIEWED
            EVENT_QUEUE_PROVISIONING_REQUESTED = :EVENT_QUEUE_PROVISIONING_REQUESTED
            EVENT_QUEUE_DEPROVISIONING_REQUESTED = :EVENT_QUEUE_DEPROVISIONING_REQUESTED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
