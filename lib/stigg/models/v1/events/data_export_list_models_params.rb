# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#list_models
        class DataExportListModelsParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param x_account_id [String]
          #   @param x_environment_id [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
