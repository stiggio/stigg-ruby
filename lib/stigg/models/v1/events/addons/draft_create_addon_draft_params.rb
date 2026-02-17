# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Addons
          # @see Stigg::Resources::V1::Events::Addons::Draft#create_addon_draft
          class DraftCreateAddonDraftParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
