# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Consumption#consume
        class ConsumptionConsumeResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of a synchronous direct credit consumption
          #
          #   @return [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data]
          required :data, -> { Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data] Result of a synchronous direct credit consumption

          # @see Stigg::Models::V1::Credits::ConsumptionConsumeResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount of credits consumed
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency_id
            #   The credit currency the credits were consumed from
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute customer_id
            #   The customer the credits were consumed from
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute timestamp
            #   The timestamp the consumption was attributed to
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute credit
            #   The optimistic credit balance after consumption (when sync credit consumption is
            #   enabled)
            #
            #   @return [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit, nil]
            optional :credit, -> { Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit }, nil?: true

            # @!attribute entities
            #   The current usage of each governance entitlement this request counted towards.
            #   Absent when governance is not enabled or the usage is unknown. Entitlements
            #   whose usage could not be read, and those of repeated idempotent requests, are
            #   left out
            #
            #   @return [Array<Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Entity>, nil]
            optional :entities,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Entity] }

            # @!attribute resource_id
            #   The resource the consumption was attributed to
            #
            #   @return [String, nil]
            optional :resource_id, String, api_name: :resourceId, nil?: true

            # @!method initialize(amount:, currency_id:, customer_id:, timestamp:, credit: nil, entities: nil, resource_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data} for more details.
            #
            #   Result of a synchronous direct credit consumption
            #
            #   @param amount [Float] The amount of credits consumed
            #
            #   @param currency_id [String] The credit currency the credits were consumed from
            #
            #   @param customer_id [String] The customer the credits were consumed from
            #
            #   @param timestamp [Time] The timestamp the consumption was attributed to
            #
            #   @param credit [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit, nil] The optimistic credit balance after consumption (when sync credit consumption is
            #
            #   @param entities [Array<Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Entity>] The current usage of each governance entitlement this request counted towards. A
            #
            #   @param resource_id [String, nil] The resource the consumption was attributed to

            # @see Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data#credit
            class Credit < Stigg::Internal::Type::BaseModel
              # @!attribute currency_id
              #   The credit currency identifier
              #
              #   @return [String]
              required :currency_id, String, api_name: :currencyId

              # @!attribute current_usage
              #   The wallet's total consumed credits for this currency (optimistic — includes
              #   not-yet-reconciled usage), shared across every feature that draws on the
              #   currency. This is the running balance, not this call's deduction — see
              #   `consumed` for that.
              #
              #   @return [Float]
              required :current_usage, Float, api_name: :currentUsage

              # @!attribute timestamp
              #   The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #   reconciliation
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute usage_limit
              #   The total credits granted
              #
              #   @return [Float]
              required :usage_limit, Float, api_name: :usageLimit

              # @!attribute usage_period_end
              #   End of the current credit grant period (when recurring credits reset), if
              #   applicable
              #
              #   @return [Time, nil]
              optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

              # @!method initialize(currency_id:, current_usage:, timestamp:, usage_limit:, usage_period_end: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit} for more
              #   details.
              #
              #   The optimistic credit balance after consumption (when sync credit consumption is
              #   enabled)
              #
              #   @param currency_id [String] The credit currency identifier
              #
              #   @param current_usage [Float] The wallet's total consumed credits for this currency (optimistic — includes not
              #
              #   @param timestamp [Time] The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #
              #   @param usage_limit [Float] The total credits granted
              #
              #   @param usage_period_end [Time, nil] End of the current credit grant period (when recurring credits reset), if applic
            end

            class Entity < Stigg::Internal::Type::BaseModel
              # @!attribute current_usage
              #   The absolute usage counted against the entitlement
              #
              #   @return [Float]
              required :current_usage, Float, api_name: :currentUsage

              # @!attribute customer_id
              #   The customer whose usage counted towards the entitlement
              #
              #   @return [String]
              required :customer_id, String, api_name: :customerId

              # @!attribute entitlement_id
              #   The governance entitlement the usage counts towards
              #
              #   @return [String]
              required :entitlement_id, String, api_name: :entitlementId

              # @!attribute entity_id
              #   The governance entity the entitlement belongs to
              #
              #   @return [String]
              required :entity_id, String, api_name: :entityId

              # @!attribute resource_id
              #   The customer resource the usage counted from; `null` for customer-level usage
              #
              #   @return [String, nil]
              required :resource_id, String, api_name: :resourceId, nil?: true

              # @!attribute scope_entity_ids
              #   The entities the entitlement is scoped to (empty when it is not scoped)
              #
              #   @return [Array<String>]
              required :scope_entity_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :scopeEntityIds

              # @!attribute usage_updated_at
              #   When the entitlement usage was last updated
              #
              #   @return [Time]
              required :usage_updated_at, Time, api_name: :usageUpdatedAt

              # @!attribute currency_id
              #   The credit currency the entitlement governs (exactly one of featureId and
              #   currencyId is set)
              #
              #   @return [String, nil]
              optional :currency_id, String, api_name: :currencyId

              # @!attribute feature_id
              #   The feature the entitlement governs (exactly one of featureId and currencyId is
              #   set)
              #
              #   @return [String, nil]
              optional :feature_id, String, api_name: :featureId

              # @!method initialize(current_usage:, customer_id:, entitlement_id:, entity_id:, resource_id:, scope_entity_ids:, usage_updated_at:, currency_id: nil, feature_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Entity} for more
              #   details.
              #
              #   The usage counted against one governance entitlement
              #
              #   @param current_usage [Float] The absolute usage counted against the entitlement
              #
              #   @param customer_id [String] The customer whose usage counted towards the entitlement
              #
              #   @param entitlement_id [String] The governance entitlement the usage counts towards
              #
              #   @param entity_id [String] The governance entity the entitlement belongs to
              #
              #   @param resource_id [String, nil] The customer resource the usage counted from; `null` for customer-level usage
              #
              #   @param scope_entity_ids [Array<String>] The entities the entitlement is scoped to (empty when it is not scoped)
              #
              #   @param usage_updated_at [Time] When the entitlement usage was last updated
              #
              #   @param currency_id [String] The credit currency the entitlement governs (exactly one of featureId and curren
              #
              #   @param feature_id [String] The feature the entitlement governs (exactly one of featureId and currencyId is
            end
          end
        end
      end
    end
  end
end
