# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#update
      class CustomerUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute coupon_id
        #   Customer level coupon
        #
        #   @return [String, nil]
        optional :coupon_id, String, api_name: :couponId, nil?: true

        # @!attribute email
        #   The email of the customer
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute integrations
        #   List of integrations
        #
        #   @return [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>, nil]
        optional :integrations,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::CustomerUpdateParams::Integration] }

        # @!attribute metadata
        #   Additional metadata
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute name
        #   The name of the customer
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(coupon_id: nil, email: nil, integrations: nil, metadata: nil, name: nil, request_options: {})
        #   @param coupon_id [String, nil] Customer level coupon
        #
        #   @param email [String, nil] The email of the customer
        #
        #   @param integrations [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>] List of integrations
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        #   @param name [String, nil] The name of the customer
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Integration < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Integration details
          #
          #   @return [String]
          required :id, String

          # @!attribute synced_entity_id
          #   Synced entity id
          #
          #   @return [String, nil]
          required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

          # @!attribute vendor_identifier
          #   The vendor identifier of integration
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerUpdateParams::Integration::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!method initialize(id:, synced_entity_id:, vendor_identifier:)
          #   @param id [String] Integration details
          #
          #   @param synced_entity_id [String, nil] Synced entity id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerUpdateParams::Integration::VendorIdentifier] The vendor identifier of integration

          # The vendor identifier of integration
          #
          # @see Stigg::Models::V1::CustomerUpdateParams::Integration#vendor_identifier
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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
