# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Coupons
        # Creates a new discount coupon with percentage or fixed amount off, applicable to
        # customer subscriptions.
        #
        # @overload create(id:, amounts_off:, description:, duration_in_months:, name:, percent_off:, additional_meta_data: nil, request_options: {})
        #
        # @param id [String] The unique identifier for the entity
        #
        # @param amounts_off [Array<Stigg::Models::V1::CouponCreateParams::AmountsOff>, nil] Fixed amount discounts in different currencies
        #
        # @param description [String, nil] Description of the coupon
        #
        # @param duration_in_months [Integer, nil] Duration of the coupon validity in months
        #
        # @param name [String] Name of the coupon
        #
        # @param percent_off [Float, nil] Percentage discount off the original price
        #
        # @param additional_meta_data [Object] Metadata associated with the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponCreateParams
        def create(params)
          parsed, options = Stigg::V1::CouponCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/coupons",
            body: parsed,
            model: Stigg::V1::Coupon,
            options: options
          )
        end

        # Retrieves a coupon by its unique identifier.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Coupon]
        #
        # @see Stigg::Models::V1::CouponRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/v1/coupons/%1$s", id],
            model: Stigg::V1::Coupon,
            options: params[:request_options]
          )
        end

        # Retrieves a paginated list of coupons in the environment.
        #
        # @overload list(id: nil, after: nil, before: nil, created_at: nil, limit: nil, status: nil, type: nil, request_options: {})
        #
        # @param id [String] Filter by entity ID
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::CouponListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param status [String] Filter by coupon status. Supports comma-separated values for multiple statuses
        #
        # @param type [Symbol, Stigg::Models::V1::CouponListParams::Type] Filter by coupon type (FIXED or PERCENTAGE)
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CouponListResponse>]
        #
        # @see Stigg::Models::V1::CouponListParams
        def list(params = {})
          parsed, options = Stigg::V1::CouponListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/coupons",
            query: parsed.transform_keys(created_at: "createdAt"),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CouponListResponse,
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
