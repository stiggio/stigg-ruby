# typed: strong

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Entities
          # Retrieves a single entity for the given customer by its identifier.
          sig do
            params(
              entity_id: String,
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1Beta::Customers::EntityRetrieveResponse)
          end
          def retrieve(
            # Path param: The entity identifier (refId)
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
              include_archived:
                Stigg::V1Beta::Customers::EntityListParams::IncludeArchived::OrSymbol,
              limit: Integer,
              type_ref_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1Beta::Customers::EntityListResponse
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
            # Query param: Whether to include archived entities. One of: true, false
            include_archived: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Filter results to entities of a specific entity type, by the type's
            # refId
            type_ref_id: nil,
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

          # Archives entities in bulk for the given customer by id.
          sig do
            params(
              id: String,
              ids: T::Array[String],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1Beta::Customers::EntityArchiveResponse)
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

          # Restores previously archived entities in bulk for the given customer by id.
          sig do
            params(
              id: String,
              ids: T::Array[String],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1Beta::Customers::EntityUnarchiveResponse)
          end
          def unarchive(
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
          # matched by id are updated; new ids are created.
          sig do
            params(
              id: String,
              entities:
                T::Array[
                  Stigg::V1Beta::Customers::EntityUpsertParams::Entity::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1Beta::Customers::EntityUpsertResponse)
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
