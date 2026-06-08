# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Plans
        # @see Stigg::Resources::V1::Plans::Entitlements#delete
        class EntitlementDeleteParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute plan_id
          #
          #   @return [String]
          required :plan_id, String

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(plan_id:, id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param plan_id [String]
          #   @param id [String]
          #   @param x_account_id [String]
          #   @param x_environment_id [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
