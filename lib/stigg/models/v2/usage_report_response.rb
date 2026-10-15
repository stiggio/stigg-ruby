# frozen_string_literal: true

module Stigg
  module Models
    module V2
      # @see Stigg::Resources::V2::Usage#report
      class UsageReportResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Reported usage measurements and the credit balances they drew from
        #
        #   @return [Stigg::Models::V2::UsageReportResponse::Data]
        required :data, -> { Stigg::Models::V2::UsageReportResponse::Data }

        # @!method initialize(data:)
        #   Response containing reported usage measurements with current usage values,
        #   period information and reset dates, plus the balance of each credit wallet they
        #   drew from.
        #
        #   @param data [Stigg::Models::V2::UsageReportResponse::Data] Reported usage measurements and the credit balances they drew from

        # @see Stigg::Models::V2::UsageReportResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute usages
          #   Usage measurements, in request order, with current values and period info
          #
          #   @return [Array<Stigg::Models::V2::UsageReportResponse::Data::Usage>]
          required :usages,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V2::UsageReportResponse::Data::Usage] }

          # @!attribute credits
          #   The balance of each credit wallet the request drew from. Omitted when no
          #   reported feature consumes credits, or when credit balances aren't computed
          #   synchronously for the environment; each usage's `credit` is then `null`.
          #
          #   @return [Array<Stigg::Models::V2::UsageReportResponse::Data::Credit>, nil]
          optional :credits,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V2::UsageReportResponse::Data::Credit] }

          # @!attribute entities
          #   The current usage of each governance entitlement this request counted towards.
          #   Absent when governance is not enabled or the usage is unknown. Entitlements
          #   whose usage could not be read, and those of repeated idempotent requests, are
          #   left out
          #
          #   @return [Array<Stigg::Models::V2::UsageReportResponse::Data::Entity>, nil]
          optional :entities,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V2::UsageReportResponse::Data::Entity] }

          # @!method initialize(usages:, credits: nil, entities: nil)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V2::UsageReportResponse::Data} for more details.
          #
          #   Reported usage measurements and the credit balances they drew from
          #
          #   @param usages [Array<Stigg::Models::V2::UsageReportResponse::Data::Usage>] Usage measurements, in request order, with current values and period info
          #
          #   @param credits [Array<Stigg::Models::V2::UsageReportResponse::Data::Credit>] The balance of each credit wallet the request drew from. Omitted when no reporte
          #
          #   @param entities [Array<Stigg::Models::V2::UsageReportResponse::Data::Entity>] The current usage of each governance entitlement this request counted towards. A

          class Usage < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute customer_id
            #   Customer id
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute feature_id
            #   Feature id
            #
            #   @return [String]
            required :feature_id, String, api_name: :featureId

            # @!attribute timestamp
            #   Timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute value
            #   The usage measurement record
            #
            #   @return [Integer]
            required :value, Integer

            # @!attribute credit
            #   The credits this measurement deducted. `null` when the measurement drew from no
            #   wallet listed in `credits`. The balance of the wallet it drew from is in the
            #   response `credits` list, matched by customer, resource and currency.
            #
            #   @return [Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit, nil]
            optional :credit, -> { Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit }, nil?: true

            # @!attribute current_usage
            #   The current measured usage value
            #
            #   @return [Float, nil]
            optional :current_usage, Float, api_name: :currentUsage, nil?: true

            # @!attribute next_reset_date
            #   The date when the next usage reset will occur
            #
            #   @return [Time, nil]
            optional :next_reset_date, Time, api_name: :nextResetDate, nil?: true

            # @!attribute resource_id
            #   The customer resource this usage applies to. Optional — only required if the
            #   customer has multiple resources (for example, one subscription per workspace or
            #   site) and usage needs to be tracked separately per resource; omit it to report
            #   usage at the customer level.
            #
            #   @return [String, nil]
            optional :resource_id, String, api_name: :resourceId, nil?: true

            # @!attribute usage_period_end
            #   The end date of the usage period in which this measurement resides (for
            #   entitlements with a reset period)
            #
            #   @return [Time, nil]
            optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

            # @!attribute usage_period_start
            #   The start date of the usage period in which this measurement resides (for
            #   entitlements with a reset period)
            #
            #   @return [Time, nil]
            optional :usage_period_start, Time, api_name: :usagePeriodStart, nil?: true

            # @!method initialize(id:, created_at:, customer_id:, feature_id:, timestamp:, value:, credit: nil, current_usage: nil, next_reset_date: nil, resource_id: nil, usage_period_end: nil, usage_period_start: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V2::UsageReportResponse::Data::Usage} for more details.
            #
            #   Recorded usage with period info and the credits it deducted
            #
            #   @param id [String] Unique identifier for the entity
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param customer_id [String] Customer id
            #
            #   @param feature_id [String] Feature id
            #
            #   @param timestamp [Time] Timestamp
            #
            #   @param value [Integer] The usage measurement record
            #
            #   @param credit [Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit, nil] The credits this measurement deducted. `null` when the measurement drew from no
            #
            #   @param current_usage [Float, nil] The current measured usage value
            #
            #   @param next_reset_date [Time, nil] The date when the next usage reset will occur
            #
            #   @param resource_id [String, nil] The customer resource this usage applies to. Optional — only required if the cus
            #
            #   @param usage_period_end [Time, nil] The end date of the usage period in which this measurement resides (for entitlem
            #
            #   @param usage_period_start [Time, nil] The start date of the usage period in which this measurement resides (for entitl

            # @see Stigg::Models::V2::UsageReportResponse::Data::Usage#credit
            class Credit < Stigg::Internal::Type::BaseModel
              # @!attribute consumed
              #   The credits this single reportUsage call deducted, in credit units — scoped to
              #   this one measurement (0 for idempotency duplicates). Contrast `currentUsage`,
              #   which is the wallet-wide running total shared across all features on this
              #   currency. Use it to reconcile expected per-call deductions.
              #
              #   @return [Float]
              required :consumed, Float

              # @!attribute currency_id
              #   The credit currency identifier
              #
              #   @return [String]
              required :currency_id, String, api_name: :currencyId

              # @!method initialize(consumed:, currency_id:)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit} for more details.
              #
              #   The credits this measurement deducted. `null` when the measurement drew from no
              #   wallet listed in `credits`. The balance of the wallet it drew from is in the
              #   response `credits` list, matched by customer, resource and currency.
              #
              #   @param consumed [Float] The credits this single reportUsage call deducted, in credit units — scoped to t
              #
              #   @param currency_id [String] The credit currency identifier
            end
          end

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

            # @!attribute customer_id
            #   Customer id
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute resource_id
            #   The wallet's resource; `null` for the customer-level wallet
            #
            #   @return [String, nil]
            required :resource_id, String, api_name: :resourceId, nil?: true

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

            # @!method initialize(currency_id:, current_usage:, customer_id:, resource_id:, timestamp:, usage_limit:, usage_period_end: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V2::UsageReportResponse::Data::Credit} for more details.
            #
            #   Optimistic credit balance of one wallet (customer, resource and currency) after
            #   the request, listed once however many measurements drew from it
            #
            #   @param currency_id [String] The credit currency identifier
            #
            #   @param current_usage [Float] The wallet's total consumed credits for this currency (optimistic — includes not
            #
            #   @param customer_id [String] Customer id
            #
            #   @param resource_id [String, nil] The wallet's resource; `null` for the customer-level wallet
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
            #   {Stigg::Models::V2::UsageReportResponse::Data::Entity} for more details.
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
