# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        sig { returns(Stigg::Resources::V1::Customers::PaymentMethod) }
        attr_reader :payment_method

        sig { returns(Stigg::Resources::V1::Customers::Usage) }
        attr_reader :usage

        # Create a new Customer
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

        # Get a single Customer by id
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def retrieve(id, request_options: {})
        end

        # Update an existing Customer
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

        # Get a list of Customers
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerListResponse)
        end
        def list(
          # Starting after this UUID for pagination
          after: nil,
          # Ending before this UUID for pagination
          before: nil,
          # Items per page
          limit: nil,
          request_options: {}
        )
        end

        # Perform archive on a Customer
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def archive(id, request_options: {})
        end

        # Perform unarchive on a Customer
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def unarchive(id, request_options: {})
        end

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
