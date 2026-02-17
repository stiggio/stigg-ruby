# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Addons#update_addon
        class AddonUpdateAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute billing_id
          #   The unique identifier for the entity in the billing provider
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute dependencies
          #   List of addons the addon is dependant on
          #
          #   @return [Array<String>, nil]
          optional :dependencies, Stigg::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute description
          #   The description of the package
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute display_name
          #   The display name of the package
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute max_quantity
          #   The maximum quantity of this addon that can be added to a subscription
          #
          #   @return [Integer, nil]
          optional :max_quantity, Integer, api_name: :maxQuantity, nil?: true

          # @!attribute metadata
          #   Metadata associated with the entity
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!method initialize(billing_id: nil, dependencies: nil, description: nil, display_name: nil, max_quantity: nil, metadata: nil, request_options: {})
          #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          #   @param dependencies [Array<String>, nil] List of addons the addon is dependant on
          #
          #   @param description [String, nil] The description of the package
          #
          #   @param display_name [String] The display name of the package
          #
          #   @param max_quantity [Integer, nil] The maximum quantity of this addon that can be added to a subscription
          #
          #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
