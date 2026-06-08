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
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionListParams::PricingType::OrSymbol]
            )
          )
        end
        attr_reader :pricing_type

        sig do
          params(
            pricing_type:
              T::Array[Stigg::V1::SubscriptionListParams::PricingType::OrSymbol]
          ).void
        end
        attr_writer :pricing_type

        # Filter by resource ID
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        # Filter by subscription status. Supports comma-separated values for multiple
        # statuses
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionListParams::Status::OrSymbol]
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              T::Array[Stigg::V1::SubscriptionListParams::Status::OrSymbol]
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :x_account_id

        sig { params(x_account_id: String).void }
        attr_writer :x_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :x_environment_id

        sig { params(x_environment_id: String).void }
        attr_writer :x_environment_id

        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::SubscriptionListParams::CreatedAt::OrHash,
            customer_id: String,
            limit: Integer,
            plan_id: String,
            pricing_type:
              T::Array[
                Stigg::V1::SubscriptionListParams::PricingType::OrSymbol
              ],
            resource_id: String,
            status:
              T::Array[Stigg::V1::SubscriptionListParams::Status::OrSymbol],
            x_account_id: String,
            x_environment_id: String,
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
          x_account_id: nil,
          x_environment_id: nil,
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
              pricing_type:
                T::Array[
                  Stigg::V1::SubscriptionListParams::PricingType::OrSymbol
                ],
              resource_id: String,
              status:
                T::Array[Stigg::V1::SubscriptionListParams::Status::OrSymbol],
              x_account_id: String,
              x_environment_id: String,
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

        module PricingType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SubscriptionListParams::PricingType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FREE =
            T.let(
              :FREE,
              Stigg::V1::SubscriptionListParams::PricingType::TaggedSymbol
            )
          PAID =
            T.let(
              :PAID,
              Stigg::V1::SubscriptionListParams::PricingType::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :CUSTOM,
              Stigg::V1::SubscriptionListParams::PricingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionListParams::PricingType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SubscriptionListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT_PENDING =
            T.let(
              :PAYMENT_PENDING,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :ACTIVE,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )
          IN_TRIAL =
            T.let(
              :IN_TRIAL,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )
          NOT_STARTED =
            T.let(
              :NOT_STARTED,
              Stigg::V1::SubscriptionListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Stigg::V1::SubscriptionListParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
