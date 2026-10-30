# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        module Entities
          # @see Stigg::Resources::V1::Customers::Entities::Entitlements#list
          class EntitlementListParams < Stigg::Internal::Type::BaseModel
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

            # @!attribute currency_id
            #   Filter entity entitlements to a specific currency, by its ID. Mutually exclusive
            #   with `featureId`.
            #
            #   @return [String, nil]
            optional :currency_id, String

            # @!attribute entity_id
            #   Filter entity entitlements to a specific entity ID
            #
            #   @return [String, nil]
            optional :entity_id, String

            # @!attribute feature_id
            #   Filter entity entitlements to a specific feature, by its ID. Mutually exclusive
            #   with `currencyId`.
            #
            #   @return [String, nil]
            optional :feature_id, String

            # @!attribute limit
            #   Maximum number of items to return
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!attribute x_account_id
            #
            #   @return [String, nil]
            optional :x_account_id, String

            # @!attribute x_environment_id
            #
            #   @return [String, nil]
            optional :x_environment_id, String

            # @!method initialize(id:, after: nil, before: nil, currency_id: nil, entity_id: nil, feature_id: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Customers::Entities::EntitlementListParams} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param after [String] Return items that come after this cursor
            #
            #   @param before [String] Return items that come before this cursor
            #
            #   @param currency_id [String] Filter entity entitlements to a specific currency, by its ID. Mutually exclusive
            #
            #   @param entity_id [String] Filter entity entitlements to a specific entity ID
            #
            #   @param feature_id [String] Filter entity entitlements to a specific feature, by its ID. Mutually exclusive
            #
            #   @param limit [Integer] Maximum number of items to return
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
