# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#check_entitlement
      class CustomerCheckEntitlementParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute currency_id
        #   Currency ID (refId) to check for credit entitlements. Mutually exclusive with
        #   `featureId`.
        #
        #   @return [String, nil]
        optional :currency_id, String

        # @!attribute feature_id
        #   Feature ID (refId) to check. Mutually exclusive with `currencyId`.
        #
        #   @return [String, nil]
        optional :feature_id, String

        # @!attribute requested_usage
        #   Requested usage amount to evaluate against the entitlement limit (numeric
        #   features only)
        #
        #   @return [Integer, nil]
        optional :requested_usage, Integer

        # @!attribute requested_values
        #   Requested values to evaluate against allowed values (enum features only)
        #
        #   @return [Array<String>, nil]
        optional :requested_values, Stigg::Internal::Type::ArrayOf[String]

        # @!attribute resource_id
        #   Resource ID to scope the entitlement check to a specific resource
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!method initialize(id:, currency_id: nil, feature_id: nil, requested_usage: nil, requested_values: nil, resource_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::CustomerCheckEntitlementParams} for more details.
        #
        #   @param id [String]
        #
        #   @param currency_id [String] Currency ID (refId) to check for credit entitlements. Mutually exclusive with `f
        #
        #   @param feature_id [String] Feature ID (refId) to check. Mutually exclusive with `currencyId`.
        #
        #   @param requested_usage [Integer] Requested usage amount to evaluate against the entitlement limit (numeric featur
        #
        #   @param requested_values [Array<String>] Requested values to evaluate against allowed values (enum features only)
        #
        #   @param resource_id [String] Resource ID to scope the entitlement check to a specific resource
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
