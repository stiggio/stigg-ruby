# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          # @see Stigg::Resources::V1::Events::DataExport::Destinations#create
          class DestinationCreateParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute destination_id
            #   The provider destination ID returned by the embedded SDK on connect
            #
            #   @return [String]
            required :destination_id, String, api_name: :destinationId

            # @!attribute destination_type
            #   The destination type (e.g. snowflake, bigquery)
            #
            #   @return [String]
            required :destination_type, String, api_name: :destinationType

            # @!attribute enabled_models
            #
            #   @return [Array<String>, nil]
            optional :enabled_models, Stigg::Internal::Type::ArrayOf[String], api_name: :enabledModels

            # @!attribute x_account_id
            #
            #   @return [String, nil]
            optional :x_account_id, String

            # @!attribute x_environment_id
            #
            #   @return [String, nil]
            optional :x_environment_id, String

            # @!method initialize(destination_id:, destination_type:, enabled_models: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #   @param destination_id [String] The provider destination ID returned by the embedded SDK on connect
            #
            #   @param destination_type [String] The destination type (e.g. snowflake, bigquery)
            #
            #   @param enabled_models [Array<String>]
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
