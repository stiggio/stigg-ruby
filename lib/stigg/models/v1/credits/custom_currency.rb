# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::CustomCurrencies#create
        class CustomCurrency < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   A custom currency used to denominate credit-based entitlements and pricing
          #
          #   @return [Stigg::Models::V1::Credits::CustomCurrency::Data]
          required :data, -> { Stigg::V1::Credits::CustomCurrency::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Credits::CustomCurrency::Data] A custom currency used to denominate credit-based entitlements and pricing

          # @see Stigg::Models::V1::Credits::CustomCurrency#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the custom currency
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

            # @!attribute description
            #   Description of the currency
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute display_name
            #   The display name of the custom currency
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute metadata
            #   Metadata associated with the entity
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute symbol
            #   The symbol used to represent the custom currency
            #
            #   @return [String, nil]
            required :symbol, String, nil?: true

            # @!attribute units
            #   Singular and plural unit labels for a custom currency
            #
            #   @return [Stigg::Models::V1::Credits::CustomCurrency::Data::Units, nil]
            required :units, -> { Stigg::V1::Credits::CustomCurrency::Data::Units }, nil?: true

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!method initialize(id:, archived_at:, created_at:, description:, display_name:, metadata:, symbol:, units:, updated_at:)
            #   A custom currency used to denominate credit-based entitlements and pricing
            #
            #   @param id [String] The unique identifier for the custom currency
            #
            #   @param archived_at [Time, nil] Timestamp of when the record was deleted
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param description [String, nil] Description of the currency
            #
            #   @param display_name [String] The display name of the custom currency
            #
            #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
            #
            #   @param symbol [String, nil] The symbol used to represent the custom currency
            #
            #   @param units [Stigg::Models::V1::Credits::CustomCurrency::Data::Units, nil] Singular and plural unit labels for a custom currency
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated

            # @see Stigg::Models::V1::Credits::CustomCurrency::Data#units
            class Units < Stigg::Internal::Type::BaseModel
              # @!attribute plural
              #   Plural form of the unit label
              #
              #   @return [String, nil]
              required :plural, String, nil?: true

              # @!attribute singular
              #   Singular form of the unit label
              #
              #   @return [String, nil]
              required :singular, String, nil?: true

              # @!method initialize(plural:, singular:)
              #   Singular and plural unit labels for a custom currency
              #
              #   @param plural [String, nil] Plural form of the unit label
              #
              #   @param singular [String, nil] Singular form of the unit label
            end
          end
        end
      end
    end
  end
end
