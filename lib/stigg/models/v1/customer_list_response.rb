# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list
      class CustomerListResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Stigg::Models::V1::CustomerListResponse::Data>]
        required :data, -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Stigg::Models::V1::CustomerListResponse::Data>]

        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Customer slug
          #
          #   @return [String]
          required :id, String

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
          required :cursor_id, String, api_name: :cursorId

          # @!attribute updated_at
          #   Timestamp of when the record was last updated
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute coupon_id
          #   Customer level coupon
          #
          #   @return [String, nil]
          optional :coupon_id, String, api_name: :couponId, nil?: true

          # @!attribute default_payment_method
          #   The default payment method details
          #
          #   @return [Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod, nil]
          optional :default_payment_method,
                   -> { Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod },
                   api_name: :defaultPaymentMethod,
                   nil?: true

          # @!attribute email
          #   The email of the customer
          #
          #   @return [String, nil]
          optional :email, String, nil?: true

          # @!attribute integrations
          #   List of integrations
          #
          #   @return [Array<Stigg::Models::V1::CustomerListResponse::Data::Integration>, nil]
          optional :integrations,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListResponse::Data::Integration] }

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

          # @!method initialize(id:, archived_at:, created_at:, cursor_id:, updated_at:, coupon_id: nil, default_payment_method: nil, email: nil, integrations: nil, metadata: nil, name: nil)
          #   @param id [String] Customer slug
          #
          #   @param archived_at [Time, nil] Timestamp of when the record was deleted
          #
          #   @param created_at [Time] Timestamp of when the record was created
          #
          #   @param cursor_id [String] Cursor ID for query pagination
          #
          #   @param updated_at [Time] Timestamp of when the record was last updated
          #
          #   @param coupon_id [String, nil] Customer level coupon
          #
          #   @param default_payment_method [Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod, nil] The default payment method details
          #
          #   @param email [String, nil] The email of the customer
          #
          #   @param integrations [Array<Stigg::Models::V1::CustomerListResponse::Data::Integration>] List of integrations
          #
          #   @param metadata [Hash{Symbol=>String}] Additional metadata
          #
          #   @param name [String, nil] The name of the customer

          # @see Stigg::Models::V1::CustomerListResponse::Data#default_payment_method
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
            #   @return [Symbol, Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod::Type]
            required :type, enum: -> { Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod::Type }

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
            #   @param type [Symbol, Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod::Type] The default payment method type

            # The default payment method type
            #
            # @see Stigg::Models::V1::CustomerListResponse::Data::DefaultPaymentMethod#type
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
            #   @return [Symbol, Stigg::Models::V1::CustomerListResponse::Data::Integration::VendorIdentifier]
            required :vendor_identifier,
                     enum: -> { Stigg::Models::V1::CustomerListResponse::Data::Integration::VendorIdentifier },
                     api_name: :vendorIdentifier

            # @!method initialize(id:, synced_entity_id:, vendor_identifier:)
            #   @param id [String] Integration details
            #
            #   @param synced_entity_id [String, nil] Synced entity id
            #
            #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerListResponse::Data::Integration::VendorIdentifier] The vendor identifier of integration

            # The vendor identifier of integration
            #
            # @see Stigg::Models::V1::CustomerListResponse::Data::Integration#vendor_identifier
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
end
