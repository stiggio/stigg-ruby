# typed: strong

module Stigg
  module Resources
    class V1
      class Coupons
        # Creates a new discount coupon with percentage or fixed amount off, applicable to
        # customer subscriptions.
        sig do
          params(
            id: String,
            amounts_off:
              T.nilable(
                T::Array[Stigg::V1::CouponCreateParams::AmountsOff::OrHash]
              ),
            description: T.nilable(String),
            duration_in_months: T.nilable(Integer),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: String,
            percent_off: T.nilable(Float),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def create(
          # The unique identifier for the entity
          id:,
          # Fixed amount discounts in different currencies
          amounts_off:,
          # Description of the coupon
          description:,
          # Duration of the coupon validity in months
          duration_in_months:,
          # Metadata associated with the entity
          metadata:,
          # Name of the coupon
          name:,
          # Percentage discount off the original price
          percent_off:,
          request_options: {}
        )
        end

        # Retrieves a coupon by its unique identifier.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Retrieves a paginated list of coupons in the environment.
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
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CouponListResponse
            ]
          )
        end
        def list(
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

        # Archives a coupon, preventing it from being applied to new subscriptions.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def archive_coupon(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Updates an existing coupon's properties such as name, description, and metadata.
        sig do
          params(
            id: String,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def update_coupon(
          # The unique identifier of the entity
          id,
          # Description of the coupon
          description: nil,
          # Metadata associated with the entity
          metadata: nil,
          # Name of the coupon
          name: nil,
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
