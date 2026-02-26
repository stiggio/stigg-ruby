# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Addons
          # @see Stigg::Resources::V1::Events::Addons::Entitlements#delete
          class EntitlementDeleteParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute addon_id
            #
            #   @return [String]
            required :addon_id, String

            # @!method initialize(addon_id:, request_options: {})
            #   @param addon_id [String]
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
