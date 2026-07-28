# typed: strong

module Stigg
  module Resources
    class V1
      class Contracts
        # Creates a contract for a customer together with all of its (custom)
        # subscriptions in a single atomic operation. Every new subscription is created
        # inside one transaction — any validation or creation failure rolls the whole
        # contract back. Each subscription entry is either a new subscription to create or
        # a reference to an existing custom subscription. Returns the created contract.
        sig do
          params(
            customer_id: String,
            subscriptions:
              T::Array[Stigg::V1::ContractCreateParams::Subscription::OrHash],
            activation_end_date: Time,
            activation_start_date: Time,
            name: T.nilable(String),
            po_number: T.nilable(String),
            setup_billing: T::Boolean,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ContractCreateResponse)
        end
        def create(
          # Body param: The customer ref ID the contract belongs to
          customer_id:,
          # Body param: The subscriptions to attach to the contract (must be non-empty).
          # Each entry is either a new subscription to create or a reference to an existing
          # custom subscription.
          subscriptions:,
          # Body param: Optional contract activation end date
          activation_end_date: nil,
          # Body param: Optional contract activation start date
          activation_start_date: nil,
          # Body param: Optional contract name
          name: nil,
          # Body param: Optional purchase-order number
          po_number: nil,
          # Body param: Whether to set up billing for the contract by creating a billing
          # contract in the connected billing provider. When false, the contract only
          # provisions access (grants entitlements) and no billing contract is created.
          # Defaults to true.
          setup_billing: nil,
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

        # Retrieves a single contract by its ID, enriched with a preview of its upcoming
        # (next) invoice when one is available. Returns 404 when no contract with that ID
        # exists in the environment.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ContractRetrieveResponse)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Updates a contract's metadata (name, PO number, activation dates) and optionally
        # re-links its subscriptions. Best-effort re-syncs the change to the connected
        # billing provider.
        sig do
          params(
            id: String,
            activation_end_date: Time,
            activation_start_date: Time,
            name: T.nilable(String),
            po_number: T.nilable(String),
            setup_billing: T::Boolean,
            subscription_ids: T::Array[String],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ContractUpdateResponse)
        end
        def update(
          # Path param: The unique identifier of the entity
          id,
          # Body param: New activation end date
          activation_end_date: nil,
          # Body param: New activation start date
          activation_start_date: nil,
          # Body param: New contract name
          name: nil,
          # Body param: New purchase-order number
          po_number: nil,
          # Body param: Enable billing on a provision-access-only contract by creating a
          # billing contract in the connected billing provider. Only takes effect when true
          # and the contract has no billing yet; omitting it leaves billing unchanged.
          # Billing is never removed by an update.
          setup_billing: nil,
          # Body param: When provided, replaces the set of subscriptions linked to the
          # contract (subscription ref IDs)
          subscription_ids: nil,
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

        # Retrieves a cursor-paginated list of contracts in the environment, fetched live
        # from the connected billing provider. Each contract is enriched with a preview of
        # its upcoming (next) invoice when one is available. Returns an empty list when no
        # billing provider is connected. Supports filtering by customer external ID,
        # state, and name.
        sig do
          params(
            after: String,
            before: String,
            customer_external_id: String,
            limit: Integer,
            name: String,
            state: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::ContractListResponse
            ]
          )
        end
        def list(
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by the exact external ID of the customer the contract
          # belongs to
          customer_external_id: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by exact contract name
          name: nil,
          # Query param: Filter by contract state. Supports comma-separated values for
          # multiple states
          state: nil,
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

        # Deletes a contract: cancels the contract in the connected billing provider and
        # cancels every subscription linked to it.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ContractDeleteResponse)
        end
        def delete(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
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
