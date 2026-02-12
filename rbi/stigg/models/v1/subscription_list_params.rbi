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

        # Return items that come after this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Return items that come before this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Filter by creation date using range operators: gt, gte, lt, lte
        sig { returns(T.nilable(Stigg::V1::SubscriptionListParams::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: Stigg::V1::SubscriptionListParams::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Filter by customer ID
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by plan ID
        sig { returns(T.nilable(String)) }
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        # Filter by pricing type. Supports comma-separated values for multiple types
        sig { returns(T.nilable(String)) }
        attr_reader :pricing_type

        sig { params(pricing_type: String).void }
        attr_writer :pricing_type

        # Filter by resource ID
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        # Filter by subscription status. Supports comma-separated values for multiple
        # statuses
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::SubscriptionListParams::CreatedAt::OrHash,
            customer_id: String,
            limit: Integer,
            plan_id: String,
            pricing_type: String,
            resource_id: String,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Filter by customer ID
          customer_id: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by plan ID
          plan_id: nil,
          # Filter by pricing type. Supports comma-separated values for multiple types
          pricing_type: nil,
          # Filter by resource ID
          resource_id: nil,
          # Filter by subscription status. Supports comma-separated values for multiple
          # statuses
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              created_at: Stigg::V1::SubscriptionListParams::CreatedAt,
              customer_id: String,
              limit: Integer,
              plan_id: String,
              pricing_type: String,
              resource_id: String,
              status: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionListParams::CreatedAt,
                Stigg::Internal::AnyHash
              )
            end

          # Greater than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # Greater than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # Less than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          # Less than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Filter by creation date using range operators: gt, gte, lt, lte
          sig do
            params(gt: Time, gte: Time, lt: Time, lte: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            # Greater than the specified createdAt value
            gt: nil,
            # Greater than or equal to the specified createdAt value
            gte: nil,
            # Less than the specified createdAt value
            lt: nil,
            # Less than or equal to the specified createdAt value
            lte: nil
          )
          end

          sig { override.returns({ gt: Time, gte: Time, lt: Time, lte: Time }) }
          def to_hash
          end
        end
      end
    end
  end
end
