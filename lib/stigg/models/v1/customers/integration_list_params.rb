# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::Integrations#list
        class IntegrationListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute after
          #   Return items that come after this cursor
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   Return items that come before this cursor
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute vendor_identifier
          #   Filter by vendor identifier. Supports comma-separated values for multiple
          #   vendors (e.g., STRIPE,HUBSPOT)
          #
          #   @return [Array<Symbol, Stigg::Models::V1::Customers::IntegrationListParams::VendorIdentifier>, nil]
          optional :vendor_identifier,
                   -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::Customers::IntegrationListParams::VendorIdentifier] }

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(id:, after: nil, before: nil, limit: nil, vendor_identifier: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Customers::IntegrationListParams} for more details.
          #
          #   @param id [String]
          #
          #   @param after [String] Return items that come after this cursor
          #
          #   @param before [String] Return items that come before this cursor
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param vendor_identifier [Array<Symbol, Stigg::Models::V1::Customers::IntegrationListParams::VendorIdentifier>] Filter by vendor identifier. Supports comma-separated values for multiple vendor
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

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
