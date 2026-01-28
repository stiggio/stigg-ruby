# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        sig { returns(Stigg::Resources::V1::Customers::PaymentMethod) }
        attr_reader :payment_method

        sig { returns(Stigg::Resources::V1::Customers::Usage) }
        attr_reader :usage

        # Provision customer
        sig do
          params(
            id: String,
            coupon_id: T.nilable(String),
            default_payment_method:
              T.nilable(
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::OrHash
              ),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerCreateParams::Integration::OrHash],
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def create(
          # Customer slug
          id:,
          # Customer level coupon
          coupon_id: nil,
          # The default payment method details
          default_payment_method: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          request_options: {}
        )
        end

        # Get a single customer by ID
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

        # Update a customer
        sig do
          params(
            id: String,
            coupon_id: T.nilable(String),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerUpdateParams::Integration::OrHash],
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def update(
          # The unique identifier of the entity
          id,
          # Customer level coupon
          coupon_id: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          request_options: {}
        )
        end

        # Get a list of customers
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
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
          # Maximum number of items to return
          limit: nil,
          request_options: {}
        )
        end

        # Archive customer
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

        # Unarchive customer
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
