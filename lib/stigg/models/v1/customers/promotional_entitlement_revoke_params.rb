# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::PromotionalEntitlements#revoke
        class PromotionalEntitlementRevokeParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute feature_id
          #
          #   @return [String]
          required :feature_id, String

          # @!method initialize(id:, feature_id:, request_options: {})
          #   @param id [String]
          #   @param feature_id [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
