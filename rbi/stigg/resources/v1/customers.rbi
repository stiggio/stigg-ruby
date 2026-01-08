# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        sig { returns(Stigg::Resources::V1::Customers::PaymentMethod) }
        attr_reader :payment_method

        # Create a new Customer
        sig do
          params(
            email: T.nilable(String),
            external_id: String,
            name: T.nilable(String),
            default_payment_method:
              T.nilable(
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::OrHash
              ),
            integrations:
              T::Array[Stigg::V1::CustomerCreateParams::Integration::OrHash],
            metadata: T::Hash[Symbol, String],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::CustomerResponse)
        end
        def create(
          # The email of the customer
          email:,
          # Customer slug
          external_id:,
          # The name of the customer
          name:,
          # The default payment method details
          default_payment_method: nil,
          # List of integrations
          integrations: nil,
          # Additional metadata
          metadata: nil,
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
            ending_before: String,
            limit: Integer,
            starting_after: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerListResponse)
        end
        def list(
          # Ending before this UUID for pagination
          ending_before: nil,
          # Items per page
          limit: nil,
          # Starting after this UUID for pagination
          starting_after: nil,
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
