# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionListParams, Stigg::Internal::AnyHash)
          end

        # Starting after this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Ending before this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Filter by customer ID
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        # Items per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by subscription status (comma-separated for multiple statuses, e.g.,
        # ACTIVE,IN_TRIAL)
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            after: String,
            before: String,
            customer_id: String,
            limit: Integer,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Starting after this UUID for pagination
          after: nil,
          # Ending before this UUID for pagination
          before: nil,
          # Filter by customer ID
          customer_id: nil,
          # Items per page
          limit: nil,
          # Filter by subscription status (comma-separated for multiple statuses, e.g.,
          # ACTIVE,IN_TRIAL)
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              customer_id: String,
              limit: Integer,
              status: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
