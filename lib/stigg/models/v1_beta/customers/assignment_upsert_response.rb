# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Assignments#upsert
        class AssignmentUpsertResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data>]
          required :data,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data] }

          # @!method initialize(data:)
          #   Assignments after upsert.
          #
          #   @param data [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data>]

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
            #   The entity ID this assignment is attached to
            #
            #   @return [String]
            required :entity_id, String, api_name: :entityId

            # @!attribute parent_id
            #   Parent entity ID in the hierarchy, or `null` for a root.
            #
            #   @return [String, nil]
            required :parent_id, String, api_name: :parentId, nil?: true

            # @!attribute scope_entity_ids
            #   Dimension-scoped sub-budget key: the set of entity IDs this budget applies to.
            #   Empty is the node-wide budget that always matches; a non-empty set only applies
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
            #   Currency ID this assignment grants (present for credit capabilities).
            #
            #   @return [String, nil]
            optional :currency_id, String, api_name: :currencyId

            # @!attribute feature_id
            #   Feature ID this assignment grants (present for feature capabilities).
            #
            #   @return [String, nil]
            optional :feature_id, String, api_name: :featureId

            # @!method initialize(id:, cadence:, created_at:, entity_id:, parent_id:, scope_entity_ids:, updated_at:, usage_limit:, currency_id: nil, feature_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data} for more
            #   details.
            #
            #   A capability assignment for an entity belonging to a customer. Defines how much
            #   of the capability the entity may consume (`usageLimit`) and how often the
            #   counter resets (`cadence`).
            #
            #   @param id [String] Synthetic UUID identifier — also the cursor anchor for paginated lists
            #
            #   @param cadence [String] Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`, `PT
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param entity_id [String] The entity ID this assignment is attached to
            #
            #   @param parent_id [String, nil] Parent entity ID in the hierarchy, or `null` for a root.
            #
            #   @param scope_entity_ids [Array<String>] Dimension-scoped sub-budget key: the set of entity IDs this budget applies to. E
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param usage_limit [Float, nil] Maximum usage allowed within one cadence window
            #
            #   @param currency_id [String] Currency ID this assignment grants (present for credit capabilities).
            #
            #   @param feature_id [String] Feature ID this assignment grants (present for feature capabilities).
          end
        end
      end
    end
  end
end
