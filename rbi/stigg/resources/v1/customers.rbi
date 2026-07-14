# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to customers
        sig { returns(Stigg::Resources::V1::Customers::PaymentMethod) }
        attr_reader :payment_method

        # Operations related to promotional entitlements
        sig do
          returns(Stigg::Resources::V1::Customers::PromotionalEntitlements)
        end
        attr_reader :promotional_entitlements

        sig { returns(Stigg::Resources::V1::Customers::Integrations) }
        attr_reader :integrations

        # Retrieves a customer by their unique identifier, including billing information
        # and subscription status.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
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

        # Updates an existing customer's properties such as name, email, and billing
        # information.
        sig do
          params(
            id: String,
            billing_currency:
              T.nilable(
                Stigg::V1::CustomerUpdateParams::BillingCurrency::OrSymbol
              ),
            billing_id: T.nilable(String),
            coupon_id:
              T.nilable(
                T.any(
                  String,
                  Stigg::V1::CustomerUpdateParams::CouponID::OrSymbol
                )
              ),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerUpdateParams::Integration::OrHash],
            language: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            passthrough: Stigg::V1::CustomerUpdateParams::Passthrough::OrHash,
            timezone: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def update(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The billing currency of the customer
          billing_currency: nil,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: Customer level coupon
          coupon_id: nil,
          # Body param: The email of the customer
          email: nil,
          # Body param: List of integrations
          integrations: nil,
          # Body param: Language to use for this customer
          language: nil,
          # Body param: Additional metadata
          metadata: nil,
          # Body param: The name of the customer
          name: nil,
          # Body param: Vendor-specific billing passthrough fields.
          passthrough: nil,
          # Body param: Timezone to use for this customer
          timezone: nil,
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

        # Retrieves a paginated list of customers in the environment.
        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::CustomerListParams::CreatedAt::OrHash,
            email: String,
            limit: Integer,
            name: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CustomerListResponse
            ]
          )
        end
        def list(
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Filter by exact customer email address
          email: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by exact customer name
          name: nil,
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

        # Archives a customer, preventing new subscriptions. Optionally cancels existing
        # subscriptions.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def archive(
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

        # Checks a single entitlement (feature or credit) for a customer or resource.
        # Supports `requestedUsage` and `requestedValues` to evaluate against limits or
        # enum values.
        #
        # **Warning:** This REST API endpoint lacks built-in client-side caching, fallback
        # mechanisms, and low-latency guarantees. It is not recommended for hot-path
        # entitlement checks. For production use, consider using the Stigg Node Server SDK
        # with caching or the Sidecar for low-latency cached responses.
        sig do
          params(
            id: String,
            currency_id: String,
            feature_id: String,
            requested_usage: Integer,
            requested_values: T::Array[String],
            resource_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerCheckEntitlementResponse)
        end
        def check_entitlement(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Currency ID (refId) to check for credit entitlements. Mutually
          # exclusive with `featureId`.
          currency_id: nil,
          # Query param: Feature ID (refId) to check. Mutually exclusive with `currencyId`.
          feature_id: nil,
          # Query param: Requested usage amount to evaluate against the entitlement limit
          # (numeric features only)
          requested_usage: nil,
          # Query param: Requested values to evaluate against allowed values (enum features
          # only)
          requested_values: nil,
          # Query param: Resource ID to scope the entitlement check to a specific resource
          resource_id: nil,
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

        # Imports multiple customers in bulk. Used for migrating customer data from
        # external systems.
        sig do
          params(
            customers:
              T::Array[Stigg::V1::CustomerImportParams::Customer::OrHash],
            integration_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerImportResponse)
        end
        def import(
          # Body param: List of customer objects to import
          customers:,
          # Body param: Integration details
          integration_id: nil,
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

        # Retrieves a paginated list of resources within the same customer.
        sig do
          params(
            id: String,
            after: String,
            before: String,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CustomerListResourcesResponse
            ]
          )
        end
        def list_resources(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
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

        # Creates a new customer.
        sig do
          params(
            id: String,
            billing_currency:
              T.nilable(
                Stigg::V1::CustomerProvisionParams::BillingCurrency::OrSymbol
              ),
            billing_id: T.nilable(String),
            coupon_id:
              T.nilable(
                T.any(
                  String,
                  Stigg::V1::CustomerProvisionParams::CouponID::OrSymbol
                )
              ),
            default_payment_method:
              T.nilable(
                Stigg::V1::CustomerProvisionParams::DefaultPaymentMethod::OrHash
              ),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerProvisionParams::Integration::OrHash],
            language: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            passthrough:
              Stigg::V1::CustomerProvisionParams::Passthrough::OrHash,
            timezone: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def provision(
          # Body param: Customer slug
          id:,
          # Body param: The billing currency of the customer
          billing_currency: nil,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: Customer level coupon
          coupon_id: nil,
          # Body param: The default payment method details
          default_payment_method: nil,
          # Body param: The email of the customer
          email: nil,
          # Body param: List of integrations
          integrations: nil,
          # Body param: Language to use for this customer
          language: nil,
          # Body param: Additional metadata
          metadata: nil,
          # Body param: The name of the customer
          name: nil,
          # Body param: Vendor-specific billing passthrough fields.
          passthrough: nil,
          # Body param: Timezone to use for this customer
          timezone: nil,
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

        # Retrieves the effective entitlements for a customer or resource, including
        # feature and credit entitlements.
        #
        # **Warning:** This REST API endpoint lacks built-in client-side caching, fallback
        # mechanisms, and low-latency guarantees. It is not recommended for hot-path
        # entitlement checks. For production use, consider using the Stigg Node Server SDK
        # with caching or the Sidecar for low-latency cached responses.
        sig do
          params(
            id: String,
            resource_id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerRetrieveEntitlementsResponse)
        end
        def retrieve_entitlements(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Resource ID to scope entitlements to a specific resource
          resource_id: nil,
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

        # Restores an archived customer, allowing them to create new subscriptions again.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def unarchive(
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
