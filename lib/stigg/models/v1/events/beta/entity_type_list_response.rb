# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          # @see Stigg::Resources::V1::Events::Beta::EntityTypes#list
          class EntityTypeListResponse < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute attribution_keys
            #   Dimension keys used to attribute usage events to instances of this type (e.g.
            #   ["orgId"]). Empty array means no attribution.
            #
            #   @return [Array<String>]
            required :attribution_keys, Stigg::Internal::Type::ArrayOf[String], api_name: :attributionKeys

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute display_name
            #   The display name for the entity type
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!method initialize(id:, attribution_keys:, created_at:, display_name:, updated_at:)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Events::Beta::EntityTypeListResponse} for more details.
            #
            #   A vendor-defined category of resource that can be governed (e.g. Org, Team,
            #   User). Vendors define entity types once per environment; their customers create
            #   instances (entities) of these types and the governance engine tracks usage and
            #   enforces limits per instance.
            #
            #   @param id [String] The unique identifier for the entity
            #
            #   @param attribution_keys [Array<String>] Dimension keys used to attribute usage events to instances of this type (e.g. ["
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param display_name [String] The display name for the entity type
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
          end
        end
      end
    end
  end
end
