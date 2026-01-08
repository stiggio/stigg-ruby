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

        # Filter by customer ID
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        # Ending before this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Items per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Starting after this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        # Filter by subscription status (comma-separated for multiple statuses, e.g.,
        # ACTIVE,IN_TRIAL)
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            customer_id: String,
            ending_before: String,
            limit: Integer,
            starting_after: String,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by customer ID
          customer_id: nil,
          # Ending before this UUID for pagination
          ending_before: nil,
          # Items per page
          limit: nil,
          # Starting after this UUID for pagination
          starting_after: nil,
          # Filter by subscription status (comma-separated for multiple statuses, e.g.,
          # ACTIVE,IN_TRIAL)
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              ending_before: String,
              limit: Integer,
              starting_after: String,
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
