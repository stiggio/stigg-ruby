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
          #   The internal ID of the integration this record is linked to
          #
          #   @return [String]
          required :body_id, String, api_name: :id

          # @!attribute synced_entity_id
          #   The external entity ID this record is linked to in the vendor system (e.g. the
          #   Stripe customer ID). Null until the link has synced; required when creating the
          #   link.
          #
          #   @return [String]
          required :synced_entity_id, String, api_name: :syncedEntityId

          # @!attribute vendor_identifier
          #   The vendor whose system holds the customer record
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
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Customers::IntegrationLinkParams} for more details.
          #
          #   @param path_id [String]
          #
          #   @param body_id [String] The internal ID of the integration this record is linked to
          #
          #   @param synced_entity_id [String] The external entity ID this record is linked to in the vendor system (e.g. the S
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::IntegrationLinkParams::VendorIdentifier] The vendor whose system holds the customer record
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The vendor whose system holds the customer record
          module VendorIdentifier
            extend Stigg::Internal::Type::Enum

            STRIPE = :STRIPE
            ZUORA = :ZUORA
            HUBSPOT = :HUBSPOT
            AWS_MARKETPLACE = :AWS_MARKETPLACE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
