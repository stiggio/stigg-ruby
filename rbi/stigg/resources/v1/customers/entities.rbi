# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class Entities
          sig do
            returns(Stigg::Resources::V1::Customers::Entities::Entitlements)
          end
          attr_reader :entitlements

          # Retrieves a single entity for the given customer by its identifier.
          sig do
            params(
              entity_id: String,
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::EntityRetrieveResponse)
          end
          def retrieve(
            # Path param: The entity identifier
            entity_id,
            # Path param: The customer identifier (owner) the entity belongs to
            id:,
            # Header param: Account ID — optional when authenticating with a user JWT (Bearer
            # token); falls back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Header param: Environment ID — required when authenticating with a user JWT
            # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
            # intrinsic to the key).
            x_environment_id: nil,
            request_options: {}
          )
          end

          # Retrieves a paginated list of entities for the given customer.
          sig do
            params(
              id: String,
              after: String,
              before: String,
              entity_type_id: String,
              include_archived:
                Stigg::V1::Customers::EntityListParams::IncludeArchived::OrSymbol,
              limit: Integer,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Customers::EntityListResponse
              ]
            )
          end
          def list(
            # Path param: The customer identifier (owner) the entities belong to
            id,
            # Query param: Return items that come after this cursor
            after: nil,
            # Query param: Return items that come before this cursor
            before: nil,
            # Query param: Filter results to entities of a specific entity type, by the type's
            # ID
            entity_type_id: nil,
            # Query param: Whether to include archived entities. One of: true, false
            include_archived: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Header param: Account ID — optional when authenticating with a user JWT (Bearer
            # token); falls back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Header param: Environment ID — required when authenticating with a user JWT
            # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
            # intrinsic to the key).
            x_environment_id: nil,
            request_options: {}
          )
          end

          # Archives entities in bulk for the given customer by id. Upsert an archived
          # entity to restore it.
          sig do
            params(
              id: String,
              ids: T::Array[String],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::EntityArchiveResponse)
          end
          def archive(
            # Path param: The customer identifier (owner) the entities belong to
            id,
            # Body param: Entity identifiers to act on
            ids:,
            # Header param: Account ID — optional when authenticating with a user JWT (Bearer
            # token); falls back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Header param: Environment ID — required when authenticating with a user JWT
            # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
            # intrinsic to the key).
            x_environment_id: nil,
            request_options: {}
          )
          end

          # Creates or updates entities in bulk for the given customer. Existing entities
          # matched by id are updated; new ids are created. An upsert of an archived entity
          # restores it. An entity on an archived entity type fails with 400.
          sig do
            params(
              id: String,
              entities:
                T::Array[
                  Stigg::V1::Customers::EntityUpsertParams::Entity::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::EntityUpsertResponse)
          end
          def upsert(
            # Path param: The customer identifier (owner) the entities belong to
            id,
            # Body param: List of entities to create or update (1-100 entries)
            entities:,
            # Header param: Account ID — optional when authenticating with a user JWT (Bearer
            # token); falls back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Header param: Environment ID — required when authenticating with a user JWT
            # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
            # intrinsic to the key).
            x_environment_id: nil,
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
