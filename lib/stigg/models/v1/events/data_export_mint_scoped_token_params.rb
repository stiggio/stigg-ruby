# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#mint_scoped_token
        class DataExportMintScopedTokenParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute application_origin
          #   FE origin the resulting JWT is bound to (provider-side anti-fraud)
          #
          #   @return [String]
          required :application_origin, String, api_name: :applicationOrigin

          # @!attribute destination_type
          #   Pin the token to a specific warehouse connect flow
          #
          #   @return [String, nil]
          optional :destination_type, String, api_name: :destinationType

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(application_origin:, destination_type: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param application_origin [String] FE origin the resulting JWT is bound to (provider-side anti-fraud)
          #
          #   @param destination_type [String] Pin the token to a specific warehouse connect flow
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
