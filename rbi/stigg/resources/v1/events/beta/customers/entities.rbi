# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Entities
              # Retrieves a single entity for the given customer by its identifier.
              sig do
                params(
                  entity_id: String,
                  id: String,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntityRetrieveResponse
                )
              end
              def retrieve(
                # The entity identifier (refId)
                entity_id,
                # The customer identifier (owner) the entity belongs to
                id:,
                request_options: {}
              )
              end

              # Retrieves a paginated list of entities for the given customer.
              sig do
                params(
                  id: String,
                  after: String,
                  before: String,
                  include_archived:
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::OrSymbol,
                  limit: Integer,
                  type_ref_id: String,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Internal::MyCursorIDPage[
                    Stigg::Models::V1::Events::Beta::Customers::EntityListResponse
                  ]
                )
              end
              def list(
                # The customer identifier (owner) the entities belong to
                id,
                # Return items that come after this cursor
                after: nil,
                # Return items that come before this cursor
                before: nil,
                # Whether to include archived entities. One of: true, false
                include_archived: nil,
                # Maximum number of items to return
                limit: nil,
                # Filter results to entities of a specific entity type, by the type's refId
                type_ref_id: nil,
                request_options: {}
              )
              end

              # Archives entities in bulk for the given customer by id.
              sig do
                params(
                  id: String,
                  ids: T::Array[String],
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntityArchiveResponse
                )
              end
              def archive(
                # The customer identifier (owner) the entities belong to
                id,
                # Entity identifiers to act on
                ids:,
                request_options: {}
              )
              end

              # Restores previously archived entities in bulk for the given customer by id.
              sig do
                params(
                  id: String,
                  ids: T::Array[String],
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse
                )
              end
              def unarchive(
                # The customer identifier (owner) the entities belong to
                id,
                # Entity identifiers to act on
                ids:,
                request_options: {}
              )
              end

              # Creates or updates entities in bulk for the given customer. Existing entities
              # matched by id are updated; new ids are created.
              sig do
                params(
                  id: String,
                  entities:
                    T::Array[
                      Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity::OrHash
                    ],
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntityUpsertResponse
                )
              end
              def upsert(
                # The customer identifier (owner) the entities belong to
                id,
                # List of entities to create or update (1-100 entries)
                entities:,
                request_options: {}
              )
              end

              # @api private
              sig { params(client: Stigg::Client).returns(T.attached_class) }
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
