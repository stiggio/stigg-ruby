# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            # @see Stigg::Resources::V1::Events::Beta::Customers::Entities#upsert
            class EntityUpsertParams < Stigg::Internal::Type::BaseModel
              extend Stigg::Internal::Type::RequestParameters::Converter
              include Stigg::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute entities
              #   List of entities to create or update (1-100 entries)
              #
              #   @return [Array<Stigg::Models::V1::Events::Beta::Customers::EntityUpsertParams::Entity>]
              required :entities,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity] }

              # @!attribute x_account_id
              #
              #   @return [String, nil]
              optional :x_account_id, String

              # @!attribute x_environment_id
              #
              #   @return [String, nil]
              optional :x_environment_id, String

              # @!method initialize(id:, entities:, x_account_id: nil, x_environment_id: nil, request_options: {})
              #   @param id [String]
              #
              #   @param entities [Array<Stigg::Models::V1::Events::Beta::Customers::EntityUpsertParams::Entity>] List of entities to create or update (1-100 entries)
              #
              #   @param x_account_id [String]
              #
              #   @param x_environment_id [String]
              #
              #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

              class Entity < Stigg::Internal::Type::BaseModel
                # @!attribute id
                #   The unique identifier for the entity
                #
                #   @return [String]
                required :id, String

                # @!attribute metadata
                #   Free-form key/value metadata. Patch semantics: empty-string value removes a key,
                #   omitted keys are preserved.
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :metadata, Stigg::Internal::Type::HashOf[String]

                # @!attribute type_ref_id
                #   The entity type refId this entity instantiates. Required when creating a new
                #   entity; on a re-upsert may be omitted to preserve the existing type. Governance
                #   returns 400 if missing on create.
                #
                #   @return [String, nil]
                optional :type_ref_id, String, api_name: :typeRefId

                # @!method initialize(id:, metadata: nil, type_ref_id: nil)
                #   Some parameter documentations has been truncated, see
                #   {Stigg::Models::V1::Events::Beta::Customers::EntityUpsertParams::Entity} for
                #   more details.
                #
                #   A single entity to create or update.
                #
                #   @param id [String] The unique identifier for the entity
                #
                #   @param metadata [Hash{Symbol=>String}] Free-form key/value metadata. Patch semantics: empty-string value removes a key,
                #
                #   @param type_ref_id [String] The entity type refId this entity instantiates. Required when creating a new ent
              end
            end
          end
        end
      end
    end
  end
end
