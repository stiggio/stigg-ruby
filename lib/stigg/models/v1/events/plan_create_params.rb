# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Plans#create
        class PlanCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #   The unique identifier for the entity
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #   The display name of the package
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute product_id
          #   The product ID to associate the plan with
          #
          #   @return [String]
          required :product_id, String, api_name: :productId

          # @!attribute billing_id
          #   The unique identifier for the entity in the billing provider
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute description
          #   The description of the package
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute metadata
          #   Metadata associated with the entity
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute parent_plan_id
          #   The ID of the parent plan, if applicable
          #
          #   @return [String, nil]
          optional :parent_plan_id, String, api_name: :parentPlanId, nil?: true

          # @!attribute pricing_type
          #   The pricing type of the package
          #
          #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateParams::PricingType, nil]
          optional :pricing_type,
                   enum: -> { Stigg::V1::Events::PlanCreateParams::PricingType },
                   api_name: :pricingType,
                   nil?: true

          # @!attribute status
          #   The status of the package
          #
          #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateParams::Status, nil]
          optional :status, enum: -> { Stigg::V1::Events::PlanCreateParams::Status }

          # @!method initialize(id:, display_name:, product_id:, billing_id: nil, description: nil, metadata: nil, parent_plan_id: nil, pricing_type: nil, status: nil, request_options: {})
          #   @param id [String] The unique identifier for the entity
          #
          #   @param display_name [String] The display name of the package
          #
          #   @param product_id [String] The product ID to associate the plan with
          #
          #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          #   @param description [String, nil] The description of the package
          #
          #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          #   @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
          #
          #   @param pricing_type [Symbol, Stigg::Models::V1::Events::PlanCreateParams::PricingType, nil] The pricing type of the package
          #
          #   @param status [Symbol, Stigg::Models::V1::Events::PlanCreateParams::Status] The status of the package
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The pricing type of the package
          module PricingType
            extend Stigg::Internal::Type::Enum

            FREE = :FREE
            PAID = :PAID
            CUSTOM = :CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The status of the package
          module Status
            extend Stigg::Internal::Type::Enum

            DRAFT = :DRAFT
            PUBLISHED = :PUBLISHED
            ARCHIVED = :ARCHIVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
