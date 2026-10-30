# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        module Entities
          # @see Stigg::Resources::V1::Customers::Entities::Entitlements#upsert
          class EntitlementUpsertResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse::Data>]
            required :data,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse::Data] }

            # @!method initialize(data:)
            #   Entity entitlements after upsert.
            #
            #   @param data [Array<Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse::Data>]

            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   Synthetic UUID identifier — also the cursor anchor for paginated lists
              #
              #   @return [String]
              required :id, String

              # @!attribute cadence
              #   Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
              #   `PT1M`.
              #
              #   @return [String]
              required :cadence, String

              # @!attribute created_at
              #   Timestamp of when the record was created
              #
              #   @return [Time]
              required :created_at, Time, api_name: :createdAt

              # @!attribute entity_id
              #   The entity ID this entity entitlement is attached to
              #
              #   @return [String]
              required :entity_id, String, api_name: :entityId

              # @!attribute parent_id
              #   Parent entity ID in the hierarchy, or `null` for a root.
              #
              #   @return [String, nil]
              required :parent_id, String, api_name: :parentId, nil?: true

              # @!attribute scope_entity_ids
              #   Dimension-scoped sub-limit key: the set of entity IDs this limit applies to.
              #   Empty is the node-wide limit that always matches; a non-empty set only applies
              #   when every listed entity is present in the resolved set (order-insensitive).
              #
              #   @return [Array<String>]
              required :scope_entity_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :scopeEntityIds

              # @!attribute updated_at
              #   Timestamp of when the record was last updated
              #
              #   @return [Time]
              required :updated_at, Time, api_name: :updatedAt

              # @!attribute usage_limit
              #   Maximum usage allowed within one cadence window
              #
              #   @return [Float, nil]
              required :usage_limit, Float, api_name: :usageLimit, nil?: true

              # @!attribute currency_id
              #   Currency ID this entity entitlement grants (present when it grants a credit
              #   currency).
              #
              #   @return [String, nil]
              optional :currency_id, String, api_name: :currencyId

              # @!attribute feature_id
              #   Feature ID this entity entitlement grants (present when it grants a feature).
              #
              #   @return [String, nil]
              optional :feature_id, String, api_name: :featureId

              # @!method initialize(id:, cadence:, created_at:, entity_id:, parent_id:, scope_entity_ids:, updated_at:, usage_limit:, currency_id: nil, feature_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse::Data} for
              #   more details.
              #
              #   An entity entitlement for an entity belonging to a customer. Defines how much of
              #   the feature or currency the entity may consume (`usageLimit`) and how often the
              #   counter resets (`cadence`).
              #
              #   @param id [String] Synthetic UUID identifier — also the cursor anchor for paginated lists
              #
              #   @param cadence [String] Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`, `PT
              #
              #   @param created_at [Time] Timestamp of when the record was created
              #
              #   @param entity_id [String] The entity ID this entity entitlement is attached to
              #
              #   @param parent_id [String, nil] Parent entity ID in the hierarchy, or `null` for a root.
              #
              #   @param scope_entity_ids [Array<String>] Dimension-scoped sub-limit key: the set of entity IDs this limit applies to. Emp
              #
              #   @param updated_at [Time] Timestamp of when the record was last updated
              #
              #   @param usage_limit [Float, nil] Maximum usage allowed within one cadence window
              #
              #   @param currency_id [String] Currency ID this entity entitlement grants (present when it grants a credit curr
              #
              #   @param feature_id [String] Feature ID this entity entitlement grants (present when it grants a feature).
            end
          end
        end
      end
    end
  end
end
