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

        # Retrieves a customer by their unique identifier, including billing information
        # and subscription status.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def update(
          # The unique identifier of the entity
          id,
          # The billing currency of the customer
          billing_currency: nil,
          # The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Customer level coupon
          coupon_id: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Language to use for this customer
          language: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          # Vendor-specific billing passthrough fields.
          passthrough: nil,
          # Timezone to use for this customer
          timezone: nil,
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CustomerListResponse
            ]
          )
        end
        def list(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Filter by exact customer email address
          email: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by exact customer name
          name: nil,
          request_options: {}
        )
        end

        # Archives a customer, preventing new subscriptions. Optionally cancels existing
        # subscriptions.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def archive(
          # The unique identifier of the entity
          id,
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerImportResponse)
        end
        def import(
          # List of customer objects to import
          customers:,
          # Integration details
          integration_id: nil,
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CustomerListResourcesResponse
            ]
          )
        end
        def list_resources(
          # The unique identifier of the entity
          id,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Maximum number of items to return
          limit: nil,
          request_options: {}
        )
        end

        # Creates a new customer and optionally provisions an initial subscription in a
        # single operation.
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def provision(
          # Customer slug
          id:,
          # The billing currency of the customer
          billing_currency: nil,
          # The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Customer level coupon
          coupon_id: nil,
          # The default payment method details
          default_payment_method: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Language to use for this customer
          language: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          # Vendor-specific billing passthrough fields.
          passthrough: nil,
          # Timezone to use for this customer
          timezone: nil,
          request_options: {}
        )
        end

        # Retrieves the effective entitlements for a customer or resource, including
        # feature and credit entitlements.
        sig do
          params(
            id: String,
            resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerRetrieveEntitlementsResponse)
        end
        def retrieve_entitlements(
          # The unique identifier of the entity
          id,
          # Resource ID to scope entitlements to a specific resource
          resource_id: nil,
          request_options: {}
        )
        end

        # Restores an archived customer, allowing them to create new subscriptions again.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def unarchive(
          # The unique identifier of the entity
          id,
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
