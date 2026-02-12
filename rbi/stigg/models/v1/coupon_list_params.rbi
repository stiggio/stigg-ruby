# typed: strong

module Stigg
  module Models
    module V1
      class CouponListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CouponListParams, Stigg::Internal::AnyHash)
          end

        # Filter by entity ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

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
        sig { returns(T.nilable(Stigg::V1::CouponListParams::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: Stigg::V1::CouponListParams::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by coupon status. Supports comma-separated values for multiple statuses
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Filter by coupon type (FIXED or PERCENTAGE)
        sig { returns(T.nilable(Stigg::V1::CouponListParams::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: Stigg::V1::CouponListParams::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            id: String,
            after: String,
            before: String,
            created_at: Stigg::V1::CouponListParams::CreatedAt::OrHash,
            limit: Integer,
            status: String,
            type: Stigg::V1::CouponListParams::Type::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by entity ID
          id: nil,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by coupon status. Supports comma-separated values for multiple statuses
          status: nil,
          # Filter by coupon type (FIXED or PERCENTAGE)
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              after: String,
              before: String,
              created_at: Stigg::V1::CouponListParams::CreatedAt,
              limit: Integer,
              status: String,
              type: Stigg::V1::CouponListParams::Type::OrSymbol,
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
                Stigg::V1::CouponListParams::CreatedAt,
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

        # Filter by coupon type (FIXED or PERCENTAGE)
        module Type
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Stigg::V1::CouponListParams::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED = T.let(:FIXED, Stigg::V1::CouponListParams::Type::TaggedSymbol)
          PERCENTAGE =
            T.let(:PERCENTAGE, Stigg::V1::CouponListParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Stigg::V1::CouponListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
