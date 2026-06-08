# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to coupons
      class Coupons
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CouponCreateParams} for more details.
        #
        # Creates a new discount coupon with percentage or fixed amount off, applicable to
        # customer subscriptions.
        #
        # @overload create(id:, amounts_off:, description:, duration_in_months:, metadata:, name:, percent_off:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: The unique identifier for the entity
        #
        # @param amounts_off [Array<Stigg::Models::V1::CouponCreateParams::AmountsOff>, nil] Body param: Fixed amount discounts in different currencies
        #
        # @param description [String, nil] Body param: Description of the coupon
        #
        # @param duration_in_months [Integer, nil] Body param: Duration of the coupon validity in months
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Metadata associated with the entity
        #
        # @param name [String] Body param: Name of the coupon
        #
        # @param percent_off [Float, nil] Body param: Percentage discount off the original price
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponCreateParams
        def create(params)
          parsed, options = Stigg::V1::CouponCreateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/coupons",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Coupon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CouponRetrieveParams} for more details.
        #
        # Retrieves a coupon by its unique identifier.
        #
        # @overload retrieve(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::CouponRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/coupons/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Coupon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CouponListParams} for more details.
        #
        # Retrieves a paginated list of coupons in the environment.
        #
        # @overload list(id: nil, after: nil, before: nil, created_at: nil, limit: nil, status: nil, type: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Query param: Filter by entity ID
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::CouponListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param status [Array<Symbol, Stigg::Models::V1::CouponListParams::Status>] Query param: Filter by coupon status. Supports comma-separated values for multip
        #
        # @param type [Symbol, Stigg::Models::V1::CouponListParams::Type] Query param: Filter by coupon type (FIXED or PERCENTAGE)
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CouponListResponse>]
        #
        # @see Stigg::Models::V1::CouponListParams
        def list(params = {})
          query_params = [:id, :after, :before, :created_at, :limit, :status, :type]
          parsed, options = Stigg::V1::CouponListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/coupons",
            query: query.transform_keys(created_at: "createdAt"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CouponListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CouponArchiveCouponParams} for more details.
        #
        # Archives a coupon, preventing it from being applied to new subscriptions.
        #
        # @overload archive_coupon(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponArchiveCouponParams
        def archive_coupon(id, params = {})
          parsed, options = Stigg::V1::CouponArchiveCouponParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/coupons/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Coupon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CouponUpdateCouponParams} for more details.
        #
        # Updates an existing coupon's properties such as name, description, and metadata.
        #
        # @overload update_coupon(id, description: nil, metadata: nil, name: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param description [String, nil] Body param: Description of the coupon
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Metadata associated with the entity
        #
        # @param name [String] Body param: Name of the coupon
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponUpdateCouponParams
        def update_coupon(id, params = {})
          parsed, options = Stigg::V1::CouponUpdateCouponParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/coupons/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Coupon,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
