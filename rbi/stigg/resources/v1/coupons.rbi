# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to coupons
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
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def create(
          # Body param: The unique identifier for the entity
          id:,
          # Body param: Fixed amount discounts in different currencies
          amounts_off:,
          # Body param: Description of the coupon
          description:,
          # Body param: Duration of the coupon validity in months
          duration_in_months:,
          # Body param: Metadata associated with the entity
          metadata:,
          # Body param: Name of the coupon
          name:,
          # Body param: Percentage discount off the original price
          percent_off:,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a coupon by its unique identifier.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
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
            status: T::Array[Stigg::V1::CouponListParams::Status::OrSymbol],
            type: Stigg::V1::CouponListParams::Type::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CouponListResponse
            ]
          )
        end
        def list(
          # Query param: Filter by entity ID
          id: nil,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by coupon status. Supports comma-separated values for
          # multiple statuses
          status: nil,
          # Query param: Filter by coupon type (FIXED or PERCENTAGE)
          type: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Archives a coupon, preventing it from being applied to new subscriptions.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def archive_coupon(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
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
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Coupon)
        end
        def update_coupon(
          # Path param: The unique identifier of the entity
          id,
          # Body param: Description of the coupon
          description: nil,
          # Body param: Metadata associated with the entity
          metadata: nil,
          # Body param: Name of the coupon
          name: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
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
