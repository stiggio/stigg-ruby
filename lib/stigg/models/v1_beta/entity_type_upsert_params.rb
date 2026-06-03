# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      # @see Stigg::Resources::V1Beta::EntityTypes#upsert
      class EntityTypeUpsertParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute types
        #   Entity types to upsert (1–100 per request)
        #
        #   @return [Array<Stigg::Models::V1Beta::EntityTypeUpsertParams::Type>]
        required :types, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1Beta::EntityTypeUpsertParams::Type] }

        # @!method initialize(types:, request_options: {})
        #   @param types [Array<Stigg::Models::V1Beta::EntityTypeUpsertParams::Type>] Entity types to upsert (1–100 per request)
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Type < Stigg::Internal::Type::BaseModel
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

          # @!attribute display_name
          #   The display name for the entity type
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!method initialize(id:, attribution_keys:, display_name:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1Beta::EntityTypeUpsertParams::Type} for more details.
          #
          #   A single entity type definition.
          #
          #   @param id [String] The unique identifier for the entity
          #
          #   @param attribution_keys [Array<String>] Dimension keys used to attribute usage events to instances of this type (e.g. ["
          #
          #   @param display_name [String] The display name for the entity type
        end
      end
    end
  end
end
