# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Coupons#update_coupon
      class CouponUpdateCouponParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute description
        #   Description of the coupon
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   Metadata associated with the entity
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

        # @!attribute name
        #   Name of the coupon
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(description: nil, metadata: nil, name: nil, request_options: {})
        #   @param description [String, nil] Description of the coupon
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Metadata associated with the entity
        #
        #   @param name [String] Name of the coupon
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
