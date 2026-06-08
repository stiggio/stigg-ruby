# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Addons
        # @see Stigg::Resources::V1::Addons::Entitlements#list
        class EntitlementListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute addon_id
          #
          #   @return [String]
          required :addon_id, String

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(addon_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param addon_id [String]
          #   @param x_account_id [String]
          #   @param x_environment_id [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
