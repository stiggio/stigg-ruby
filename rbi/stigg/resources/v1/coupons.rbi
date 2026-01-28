# typed: strong

module Stigg
  module Resources
    class V1
      class Coupons
        # Create coupon
        sig do
          params(
            id: String,
            amounts_off:
              T.nilable(
                T::Array[Stigg::V1::CouponCreateParams::AmountsOff::OrHash]
              ),
            description: T.nilable(String),
            duration_in_months: T.nilable(Integer),
            name: String,
            percent_off: T.nilable(Float),
            additional_meta_data: T.anything,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CouponCreateResponse)
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
          # Name of the coupon
          name:,
          # Percentage discount off the original price
          percent_off:,
          # Metadata associated with the entity
          additional_meta_data: nil,
          request_options: {}
        )
        end

        # Get a single coupon by ID
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CouponRetrieveResponse)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Get a list of coupons
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::CouponListResponse
            ]
          )
        end
        def list(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Maximum number of items to return
          limit: nil,
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
