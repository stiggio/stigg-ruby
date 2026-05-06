# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#check_entitlement
      class CustomerCheckEntitlementResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit]
        required :data, union: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit]

        # @see Stigg::Models::V1::CustomerCheckEntitlementResponse#data
        module Data
          extend Stigg::Internal::Type::Union

          discriminator :type

          variant :FEATURE, -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature }

          variant :CREDIT, -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit }

          class Feature < Stigg::Internal::Type::BaseModel
            # @!attribute access_denied_reason
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::AccessDeniedReason, nil]
            required :access_denied_reason,
                     enum: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::AccessDeniedReason },
                     api_name: :accessDeniedReason,
                     nil?: true

            # @!attribute is_granted
            #
            #   @return [Boolean]
            required :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

            # @!attribute type
            #
            #   @return [Symbol, :FEATURE]
            required :type, const: :FEATURE

            # @!attribute current_usage
            #
            #   @return [Float, nil]
            optional :current_usage, Float, api_name: :currentUsage

            # @!attribute entitlement_updated_at
            #   Timestamp of the last update to the entitlement grant or configuration.
            #
            #   @return [Time, nil]
            optional :entitlement_updated_at, Time, api_name: :entitlementUpdatedAt

            # @!attribute feature
            #
            #   @return [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature, nil]
            optional :feature, -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature }

            # @!attribute has_unlimited_usage
            #
            #   @return [Boolean, nil]
            optional :has_unlimited_usage, Stigg::Internal::Type::Boolean, api_name: :hasUnlimitedUsage

            # @!attribute reset_period
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::ResetPeriod, nil]
            optional :reset_period,
                     enum: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::ResetPeriod },
                     api_name: :resetPeriod,
                     nil?: true

            # @!attribute usage_limit
            #
            #   @return [Float, nil]
            optional :usage_limit, Float, api_name: :usageLimit, nil?: true

            # @!attribute usage_period_anchor
            #   The anchor for calculating the usage period for metered entitlements with a
            #   reset period configured
            #
            #   @return [Time, nil]
            optional :usage_period_anchor, Time, api_name: :usagePeriodAnchor

            # @!attribute usage_period_end
            #   The end date of the usage period for metered entitlements with a reset period
            #   configured
            #
            #   @return [Time, nil]
            optional :usage_period_end, Time, api_name: :usagePeriodEnd

            # @!attribute usage_period_start
            #   The start date of the usage period for metered entitlements with a reset period
            #   configured
            #
            #   @return [Time, nil]
            optional :usage_period_start, Time, api_name: :usagePeriodStart

            # @!attribute valid_until
            #   The next time the entitlement should be recalculated
            #
            #   @return [Time, nil]
            optional :valid_until, Time, api_name: :validUntil

            # @!method initialize(access_denied_reason:, is_granted:, current_usage: nil, entitlement_updated_at: nil, feature: nil, has_unlimited_usage: nil, reset_period: nil, usage_limit: nil, usage_period_anchor: nil, usage_period_end: nil, usage_period_start: nil, valid_until: nil, type: :FEATURE)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature} for more
            #   details.
            #
            #   @param access_denied_reason [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::AccessDeniedReason, nil]
            #
            #   @param is_granted [Boolean]
            #
            #   @param current_usage [Float]
            #
            #   @param entitlement_updated_at [Time] Timestamp of the last update to the entitlement grant or configuration.
            #
            #   @param feature [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature]
            #
            #   @param has_unlimited_usage [Boolean]
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::ResetPeriod, nil]
            #
            #   @param usage_limit [Float, nil]
            #
            #   @param usage_period_anchor [Time] The anchor for calculating the usage period for metered entitlements with a rese
            #
            #   @param usage_period_end [Time] The end date of the usage period for metered entitlements with a reset period co
            #
            #   @param usage_period_start [Time] The start date of the usage period for metered entitlements with a reset period
            #
            #   @param valid_until [Time] The next time the entitlement should be recalculated
            #
            #   @param type [Symbol, :FEATURE]

            # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature#access_denied_reason
            module AccessDeniedReason
              extend Stigg::Internal::Type::Enum

              FEATURE_NOT_FOUND = :FeatureNotFound
              CUSTOMER_NOT_FOUND = :CustomerNotFound
              CUSTOMER_IS_ARCHIVED = :CustomerIsArchived
              CUSTOMER_RESOURCE_NOT_FOUND = :CustomerResourceNotFound
              NO_ACTIVE_SUBSCRIPTION = :NoActiveSubscription
              NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION = :NoFeatureEntitlementInSubscription
              REQUESTED_USAGE_EXCEEDING_LIMIT = :RequestedUsageExceedingLimit
              REQUESTED_VALUES_MISMATCH = :RequestedValuesMismatch
              BUDGET_EXCEEDED = :BudgetExceeded
              UNKNOWN = :Unknown
              FEATURE_TYPE_MISMATCH = :FeatureTypeMismatch
              REVOKED = :Revoked
              INSUFFICIENT_CREDITS = :InsufficientCredits
              ENTITLEMENT_NOT_FOUND = :EntitlementNotFound

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature#feature
            class Feature < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The unique reference ID of the entitlement.
              #
              #   @return [String]
              required :id, String

              # @!attribute display_name
              #   The human-readable name of the entitlement, shown in UI elements.
              #
              #   @return [String]
              required :display_name, String, api_name: :displayName

              # @!attribute feature_status
              #   The current status of the feature.
              #
              #   @return [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureStatus]
              required :feature_status,
                       enum: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureStatus },
                       api_name: :featureStatus

              # @!attribute feature_type
              #   The type of feature associated with the entitlement.
              #
              #   @return [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureType]
              required :feature_type,
                       enum: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureType },
                       api_name: :featureType

              # @!method initialize(id:, display_name:, feature_status:, feature_type:)
              #   @param id [String] The unique reference ID of the entitlement.
              #
              #   @param display_name [String] The human-readable name of the entitlement, shown in UI elements.
              #
              #   @param feature_status [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureStatus] The current status of the feature.
              #
              #   @param feature_type [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature::FeatureType] The type of feature associated with the entitlement.

              # The current status of the feature.
              #
              # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature#feature_status
              module FeatureStatus
                extend Stigg::Internal::Type::Enum

                NEW = :NEW
                SUSPENDED = :SUSPENDED
                ACTIVE = :ACTIVE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The type of feature associated with the entitlement.
              #
              # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature::Feature#feature_type
              module FeatureType
                extend Stigg::Internal::Type::Enum

                BOOLEAN = :BOOLEAN
                NUMBER = :NUMBER
                ENUM = :ENUM

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature#reset_period
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              YEAR = :YEAR
              MONTH = :MONTH
              WEEK = :WEEK
              DAY = :DAY
              HOUR = :HOUR

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Credit < Stigg::Internal::Type::BaseModel
            # @!attribute access_denied_reason
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::AccessDeniedReason, nil]
            required :access_denied_reason,
                     enum: -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::AccessDeniedReason },
                     api_name: :accessDeniedReason,
                     nil?: true

            # @!attribute currency
            #   The currency associated with a credit entitlement.
            #
            #   @return [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::Currency]
            required :currency, -> { Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::Currency }

            # @!attribute current_usage
            #
            #   @return [Float]
            required :current_usage, Float, api_name: :currentUsage

            # @!attribute is_granted
            #
            #   @return [Boolean]
            required :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

            # @!attribute type
            #
            #   @return [Symbol, :CREDIT]
            required :type, const: :CREDIT

            # @!attribute usage_limit
            #
            #   @return [Float]
            required :usage_limit, Float, api_name: :usageLimit

            # @!attribute usage_updated_at
            #   Timestamp of the last update to the credit usage.
            #
            #   @return [Time]
            required :usage_updated_at, Time, api_name: :usageUpdatedAt

            # @!attribute entitlement_updated_at
            #   Timestamp of the last update to the entitlement grant or configuration.
            #
            #   @return [Time, nil]
            optional :entitlement_updated_at, Time, api_name: :entitlementUpdatedAt

            # @!attribute usage_period_end
            #   The end date of the current billing period for recurring credit grants.
            #
            #   @return [Time, nil]
            optional :usage_period_end, Time, api_name: :usagePeriodEnd

            # @!attribute valid_until
            #   The next time the entitlement should be recalculated
            #
            #   @return [Time, nil]
            optional :valid_until, Time, api_name: :validUntil

            # @!method initialize(access_denied_reason:, currency:, current_usage:, is_granted:, usage_limit:, usage_updated_at:, entitlement_updated_at: nil, usage_period_end: nil, valid_until: nil, type: :CREDIT)
            #   @param access_denied_reason [Symbol, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::AccessDeniedReason, nil]
            #
            #   @param currency [Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit::Currency] The currency associated with a credit entitlement.
            #
            #   @param current_usage [Float]
            #
            #   @param is_granted [Boolean]
            #
            #   @param usage_limit [Float]
            #
            #   @param usage_updated_at [Time] Timestamp of the last update to the credit usage.
            #
            #   @param entitlement_updated_at [Time] Timestamp of the last update to the entitlement grant or configuration.
            #
            #   @param usage_period_end [Time] The end date of the current billing period for recurring credit grants.
            #
            #   @param valid_until [Time] The next time the entitlement should be recalculated
            #
            #   @param type [Symbol, :CREDIT]

            # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit#access_denied_reason
            module AccessDeniedReason
              extend Stigg::Internal::Type::Enum

              FEATURE_NOT_FOUND = :FeatureNotFound
              CUSTOMER_NOT_FOUND = :CustomerNotFound
              CUSTOMER_IS_ARCHIVED = :CustomerIsArchived
              CUSTOMER_RESOURCE_NOT_FOUND = :CustomerResourceNotFound
              NO_ACTIVE_SUBSCRIPTION = :NoActiveSubscription
              NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION = :NoFeatureEntitlementInSubscription
              REQUESTED_USAGE_EXCEEDING_LIMIT = :RequestedUsageExceedingLimit
              REQUESTED_VALUES_MISMATCH = :RequestedValuesMismatch
              BUDGET_EXCEEDED = :BudgetExceeded
              UNKNOWN = :Unknown
              FEATURE_TYPE_MISMATCH = :FeatureTypeMismatch
              REVOKED = :Revoked
              INSUFFICIENT_CREDITS = :InsufficientCredits
              ENTITLEMENT_NOT_FOUND = :EntitlementNotFound

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit#currency
            class Currency < Stigg::Internal::Type::BaseModel
              # @!attribute currency_id
              #   The unique identifier of the custom currency.
              #
              #   @return [String]
              required :currency_id, String, api_name: :currencyId

              # @!attribute display_name
              #   The display name of the currency.
              #
              #   @return [String]
              required :display_name, String, api_name: :displayName

              # @!attribute description
              #   A description of the currency.
              #
              #   @return [String, nil]
              optional :description, String, nil?: true

              # @!attribute metadata
              #   Additional metadata associated with the currency.
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

              # @!attribute unit_plural
              #   The plural form of the currency unit.
              #
              #   @return [String, nil]
              optional :unit_plural, String, api_name: :unitPlural, nil?: true

              # @!attribute unit_singular
              #   The singular form of the currency unit.
              #
              #   @return [String, nil]
              optional :unit_singular, String, api_name: :unitSingular, nil?: true

              # @!method initialize(currency_id:, display_name:, description: nil, metadata: nil, unit_plural: nil, unit_singular: nil)
              #   The currency associated with a credit entitlement.
              #
              #   @param currency_id [String] The unique identifier of the custom currency.
              #
              #   @param display_name [String] The display name of the currency.
              #
              #   @param description [String, nil] A description of the currency.
              #
              #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata associated with the currency.
              #
              #   @param unit_plural [String, nil] The plural form of the currency unit.
              #
              #   @param unit_singular [String, nil] The singular form of the currency unit.
            end
          end

          # @!method self.variants
          #   @return [Array(Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Feature, Stigg::Models::V1::CustomerCheckEntitlementResponse::Data::Credit)]
        end
      end
    end
  end
end
