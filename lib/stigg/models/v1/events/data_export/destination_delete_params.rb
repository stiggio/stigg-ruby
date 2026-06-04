# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          # @see Stigg::Resources::V1::Events::DataExport::Destinations#delete
          class DestinationDeleteParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute destination_id
            #
            #   @return [String]
            required :destination_id, String

            # @!method initialize(destination_id:, request_options: {})
            #   @param destination_id [String]
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
