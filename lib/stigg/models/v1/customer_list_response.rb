# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list
      class CustomerListResponse < Stigg::Internal::Type::BaseModel
        # @!attribute archived_at
        #   Timestamp of when the record was deleted
        #
        #   @return [Time, nil]
        required :archived_at, Time, api_name: :archivedAt, nil?: true

        # @!attribute created_at
        #   Timestamp of when the record was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute cursor_id
        #   Cursor ID for query pagination
        #
        #   @return [String]
        required :cursor_id, String

        # @!attribute email
        #   The email of the customer
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute external_id
        #   Customer slug
        #
        #   @return [String]
        required :external_id, String, api_name: :externalId

        # @!attribute name
        #   The name of the customer
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute updated_at
        #   Timestamp of when the record was last updated
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute default_payment_method
        #   The default payment method details
        #
        #   @return [Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod, nil]
        optional :default_payment_method,
                 -> { Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod },
                 api_name: :defaultPaymentMethod,
                 nil?: true

        # @!attribute integrations
        #   List of integrations
        #
        #   @return [Array<Stigg::Models::V1::CustomerListResponse::Integration>, nil]
        optional :integrations,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListResponse::Integration] }

        # @!attribute metadata
        #   Additional metadata
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!method initialize(archived_at:, created_at:, cursor_id:, email:, external_id:, name:, updated_at:, default_payment_method: nil, integrations: nil, metadata: nil)
        #   @param archived_at [Time, nil] Timestamp of when the record was deleted
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param cursor_id [String] Cursor ID for query pagination
        #
        #   @param email [String, nil] The email of the customer
        #
        #   @param external_id [String] Customer slug
        #
        #   @param name [String, nil] The name of the customer
        #
        #   @param updated_at [Time] Timestamp of when the record was last updated
        #
        #   @param default_payment_method [Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod, nil] The default payment method details
        #
        #   @param integrations [Array<Stigg::Models::V1::CustomerListResponse::Integration>] List of integrations
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata

        # @see Stigg::Models::V1::CustomerListResponse#default_payment_method
        class DefaultPaymentMethod < Stigg::Internal::Type::BaseModel
          # @!attribute billing_id
          #   The default payment method id
          #
          #   @return [String, nil]
          required :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute card_expiry_month
          #   The expiration month of the default payment method
          #
          #   @return [Float, nil]
          required :card_expiry_month, Float, api_name: :cardExpiryMonth, nil?: true

          # @!attribute card_expiry_year
          #   The expiration year of the default payment method
          #
          #   @return [Float, nil]
          required :card_expiry_year, Float, api_name: :cardExpiryYear, nil?: true

          # @!attribute card_last4_digits
          #   The last 4 digits of the default payment method
          #
          #   @return [String, nil]
          required :card_last4_digits, String, api_name: :cardLast4Digits, nil?: true

          # @!attribute type
          #   The default payment method type
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type]
          required :type, enum: -> { Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type }

          # @!method initialize(billing_id:, card_expiry_month:, card_expiry_year:, card_last4_digits:, type:)
          #   The default payment method details
          #
          #   @param billing_id [String, nil] The default payment method id
          #
          #   @param card_expiry_month [Float, nil] The expiration month of the default payment method
          #
          #   @param card_expiry_year [Float, nil] The expiration year of the default payment method
          #
          #   @param card_last4_digits [String, nil] The last 4 digits of the default payment method
          #
          #   @param type [Symbol, Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type] The default payment method type

          # The default payment method type
          #
          # @see Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod#type
          module Type
            extend Stigg::Internal::Type::Enum

            CARD = :CARD
            BANK = :BANK
            CASH_APP = :CASH_APP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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
          #   @return [Symbol, Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!method initialize(id:, synced_entity_id:, vendor_identifier:)
          #   @param id [String] Integration details
          #
          #   @param synced_entity_id [String, nil] Synced entity id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier] The vendor identifier of integration

          # The vendor identifier of integration
          #
          # @see Stigg::Models::V1::CustomerListResponse::Integration#vendor_identifier
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
