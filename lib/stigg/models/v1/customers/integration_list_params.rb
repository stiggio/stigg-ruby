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
          #   @return [String, nil]
          optional :vendor_identifier, String

          # @!method initialize(id:, after: nil, before: nil, limit: nil, vendor_identifier: nil, request_options: {})
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
          #   @param vendor_identifier [String] Filter by vendor identifier. Supports comma-separated values for multiple vendor
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
