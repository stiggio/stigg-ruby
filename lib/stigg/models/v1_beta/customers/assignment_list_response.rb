# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Assignments#list
        class AssignmentListResponse < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Synthetic UUID identifier — also the cursor anchor for paginated lists
          #
          #   @return [String]
          required :id, String

          # @!attribute cadence
          #   Usage-reset cadence. Currently only `MONTH` is supported
          #
          #   @return [Symbol, Stigg::Models::V1Beta::Customers::AssignmentListResponse::Cadence]
          required :cadence, enum: -> { Stigg::Models::V1Beta::Customers::AssignmentListResponse::Cadence }

          # @!attribute created_at
          #   Timestamp of when the record was created
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute entity_id
          #   The entity refId this assignment is attached to
          #
          #   @return [String]
          required :entity_id, String, api_name: :entityId

          # @!attribute parent_id
          #   Parent entity refId in the hierarchy, or `null` for a root.
          #
          #   @return [String, nil]
          required :parent_id, String, api_name: :parentId, nil?: true

          # @!attribute scope_entity_ids
          #   Dimension-scoped sub-budget key: the set of entity refIds this budget applies
          #   to. Empty is the node-wide budget that always matches; a non-empty set only
          #   applies when every listed entity is present in the resolved set
          #   (order-insensitive).
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
          #   @return [Float]
          required :usage_limit, Float, api_name: :usageLimit

          # @!attribute currency_id
          #   Currency refId this assignment grants (present for credit capabilities).
          #
          #   @return [String, nil]
          optional :currency_id, String, api_name: :currencyId

          # @!attribute feature_id
          #   Feature refId this assignment grants (present for feature capabilities).
          #
          #   @return [String, nil]
          optional :feature_id, String, api_name: :featureId

          # @!method initialize(id:, cadence:, created_at:, entity_id:, parent_id:, scope_entity_ids:, updated_at:, usage_limit:, currency_id: nil, feature_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1Beta::Customers::AssignmentListResponse} for more details.
          #
          #   A capability assignment for an entity belonging to a customer. Defines how much
          #   of the capability the entity may consume (`usageLimit`) and how often the
          #   counter resets (`cadence`).
          #
          #   @param id [String] Synthetic UUID identifier — also the cursor anchor for paginated lists
          #
          #   @param cadence [Symbol, Stigg::Models::V1Beta::Customers::AssignmentListResponse::Cadence] Usage-reset cadence. Currently only `MONTH` is supported
          #
          #   @param created_at [Time] Timestamp of when the record was created
          #
          #   @param entity_id [String] The entity refId this assignment is attached to
          #
          #   @param parent_id [String, nil] Parent entity refId in the hierarchy, or `null` for a root.
          #
          #   @param scope_entity_ids [Array<String>] Dimension-scoped sub-budget key: the set of entity refIds this budget applies to
          #
          #   @param updated_at [Time] Timestamp of when the record was last updated
          #
          #   @param usage_limit [Float] Maximum usage allowed within one cadence window
          #
          #   @param currency_id [String] Currency refId this assignment grants (present for credit capabilities).
          #
          #   @param feature_id [String] Feature refId this assignment grants (present for feature capabilities).

          # Usage-reset cadence. Currently only `MONTH` is supported
          #
          # @see Stigg::Models::V1Beta::Customers::AssignmentListResponse#cadence
          module Cadence
            extend Stigg::Internal::Type::Enum

            MONTH = :MONTH

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
