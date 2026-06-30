# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::Integrations#link
        class IntegrationLinkParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute path_id
          #
          #   @return [String]
          required :path_id, String

          # @!attribute body_id
          #   Integration details
          #
          #   @return [String]
          required :body_id, String, api_name: :id

          # @!attribute synced_entity_id
          #   Synced entity id
          #
          #   @return [String]
          required :synced_entity_id, String, api_name: :syncedEntityId

          # @!attribute vendor_identifier
          #   The vendor identifier of integration
          #
          #   @return [Symbol, Stigg::Models::V1::Customers::IntegrationLinkParams::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(path_id:, body_id:, synced_entity_id:, vendor_identifier:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param path_id [String]
          #
          #   @param body_id [String] Integration details
          #
          #   @param synced_entity_id [String] Synced entity id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::IntegrationLinkParams::VendorIdentifier] The vendor identifier of integration
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The vendor identifier of integration
          module VendorIdentifier
            extend Stigg::Internal::Type::Enum

            AUTH0 = :AUTH0
            ZUORA = :ZUORA
            STRIPE = :STRIPE
            HUBSPOT = :HUBSPOT
            AWS_MARKETPLACE = :AWS_MARKETPLACE
            SNOWFLAKE = :SNOWFLAKE
            SALESFORCE = :SALESFORCE
            BIG_QUERY = :BIG_QUERY
            OPEN_FGA = :OPEN_FGA
            APP_STORE = :APP_STORE
            RECEIVED = :RECEIVED
            PREQUEL = :PREQUEL
            AIRWALLEX = :AIRWALLEX

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
