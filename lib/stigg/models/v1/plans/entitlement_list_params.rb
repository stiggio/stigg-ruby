# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Plans
        # @see Stigg::Resources::V1::Plans::Entitlements#list
        class EntitlementListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute plan_id
          #
          #   @return [String]
          required :plan_id, String

          # @!method initialize(plan_id:, request_options: {})
          #   @param plan_id [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
