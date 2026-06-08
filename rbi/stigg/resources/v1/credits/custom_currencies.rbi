# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to custom currencies
        class CustomCurrencies
          # Creates a new custom currency in the environment.
          sig do
            params(
              id: String,
              display_name: String,
              description: String,
              metadata: T::Hash[Symbol, String],
              symbol: String,
              units:
                Stigg::V1::Credits::CustomCurrencyCreateParams::Units::OrHash,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CustomCurrencyResponse)
          end
          def create(
            # Body param: The unique identifier for the new custom currency
            id:,
            # Body param: The display name of the custom currency
            display_name:,
            # Body param: Description of the currency
            description: nil,
            # Body param: Additional metadata to attach to the custom currency
            metadata: nil,
            # Body param: The symbol used to represent the custom currency
            symbol: nil,
            # Body param: Singular and plural unit labels for a custom currency. Both fields
            # are required when supplied.
            units: nil,
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

          # Updates an existing custom currency. Only the supplied fields are modified.
          sig do
            params(
              currency_id: String,
              description: T.nilable(String),
              display_name: String,
              metadata: T.nilable(T::Hash[Symbol, String]),
              symbol: T.nilable(String),
              units:
                Stigg::V1::Credits::CustomCurrencyUpdateParams::Units::OrHash,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CustomCurrencyResponse)
          end
          def update(
            # Path param: The reference ID of the custom currency
            currency_id,
            # Body param: A human-readable description of the custom currency. Send an empty
            # string to clear.
            description: nil,
            # Body param: The display name of the custom currency
            display_name: nil,
            # Body param: Additional metadata to attach to the custom currency
            metadata: nil,
            # Body param: The symbol used to represent the custom currency. Send an empty
            # string to clear.
            symbol: nil,
            # Body param: Singular and plural unit labels for a custom currency. Both fields
            # are required when supplied.
            units: nil,
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

          # Retrieves a paginated list of custom currencies in the environment. Archived
          # currencies are excluded by default; pass `status=ARCHIVED` (or
          # `status=ACTIVE,ARCHIVED`) to include them.
          sig do
            params(
              after: String,
              before: String,
              limit: Integer,
              status:
                T::Array[
                  Stigg::V1::Credits::CustomCurrencyListParams::Status::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Credits::CustomCurrencyListResponse
              ]
            )
          end
          def list(
            # Query param: Return items that come after this cursor
            after: nil,
            # Query param: Return items that come before this cursor
            before: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Filter by custom currency status. Supports comma-separated values
            # (e.g., `ACTIVE,ARCHIVED`). Defaults to `ACTIVE`.
            status: nil,
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

          # Archives a custom currency. Fails if the currency is still associated with any
          # active plan or addon — use the associated-entities endpoint first to inspect
          # dependencies.
          sig do
            params(
              currency_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CustomCurrencyResponse)
          end
          def archive(
            # The reference ID of the custom currency
            currency_id,
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

          # Lists the active plans and addons that reference a custom currency. Useful
          # before archiving to inspect dependencies.
          sig do
            params(
              currency_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse
            )
          end
          def list_associated_entities(
            # The reference ID of the custom currency
            currency_id,
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

          # Restores a previously archived custom currency. Fails if another active currency
          # with the same ID already exists.
          sig do
            params(
              currency_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CustomCurrencyResponse)
          end
          def unarchive(
            # The reference ID of the custom currency
            currency_id,
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
end
