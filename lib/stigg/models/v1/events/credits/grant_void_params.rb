# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::Grants#void
          class GrantVoidParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:, request_options: {})
            #   @param id [String]
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
