# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          # @see Stigg::Resources::V1::Events::DataExport::Destinations#update_selection
          class DestinationUpdateSelectionParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute destination_id
            #
            #   @return [String]
            required :destination_id, String

            # @!attribute enabled_models
            #
            #   @return [Array<String>]
            required :enabled_models, Stigg::Internal::Type::ArrayOf[String], api_name: :enabledModels

            # @!attribute integration_id
            #   Target integration row hosting the destination
            #
            #   @return [String]
            required :integration_id, String, api_name: :integrationId

            # @!attribute x_account_id
            #
            #   @return [String, nil]
            optional :x_account_id, String

            # @!attribute x_environment_id
            #
            #   @return [String, nil]
            optional :x_environment_id, String

            # @!method initialize(destination_id:, enabled_models:, integration_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
            #   @param destination_id [String]
            #
            #   @param enabled_models [Array<String>]
            #
            #   @param integration_id [String] Target integration row hosting the destination
            #
            #   @param x_account_id [String]
            #
            #   @param x_environment_id [String]
            #
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
