# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Plans#create
        class PlanCreateResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Plan configuration object
          #
          #   @return [Stigg::Models::V1::Events::PlanCreateResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::PlanCreateResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::PlanCreateResponse::Data] Plan configuration object

          # @see Stigg::Models::V1::Events::PlanCreateResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute billing_id
            #   The unique identifier for the entity in the billing provider
            #
            #   @return [String, nil]
            required :billing_id, String, api_name: :billingId, nil?: true

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute description
            #   The description of the package
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute display_name
            #   The display name of the package
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute entitlements
            #   List of entitlements of the package
            #
            #   @return [Array<Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement>]
            required :entitlements,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement] }

            # @!attribute is_latest
            #   Indicates if the package is the latest version
            #
            #   @return [Boolean, nil]
            required :is_latest, Stigg::Internal::Type::Boolean, api_name: :isLatest, nil?: true

            # @!attribute metadata
            #   Metadata associated with the entity
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute parent_plan_id
            #   The ID of the parent plan, if applicable
            #
            #   @return [String, nil]
            required :parent_plan_id, String, api_name: :parentPlanId, nil?: true

            # @!attribute pricing_type
            #   The pricing type of the package
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType, nil]
            required :pricing_type,
                     enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType },
                     api_name: :pricingType,
                     nil?: true

            # @!attribute product_id
            #   The product id of the package
            #
            #   @return [String]
            required :product_id, String, api_name: :productId

            # @!attribute status
            #   The status of the package
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Status]
            required :status, enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::Status }

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute version_number
            #   The version number of the package
            #
            #   @return [Integer]
            required :version_number, Integer, api_name: :versionNumber

            # @!method initialize(id:, billing_id:, created_at:, description:, display_name:, entitlements:, is_latest:, metadata:, parent_plan_id:, pricing_type:, product_id:, status:, updated_at:, version_number:)
            #   Plan configuration object
            #
            #   @param id [String] The unique identifier for the entity
            #
            #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param description [String, nil] The description of the package
            #
            #   @param display_name [String] The display name of the package
            #
            #   @param entitlements [Array<Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement>] List of entitlements of the package
            #
            #   @param is_latest [Boolean, nil] Indicates if the package is the latest version
            #
            #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
            #
            #   @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
            #
            #   @param pricing_type [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType, nil] The pricing type of the package
            #
            #   @param product_id [String] The product id of the package
            #
            #   @param status [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Status] The status of the package
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param version_number [Integer] The version number of the package

            class Entitlement < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The unique identifier for the entity
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type]
              required :type, enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type }

              # @!method initialize(id:, type:)
              #   Entitlement reference with type and identifier
              #
              #   @param id [String] The unique identifier for the entity
              #
              #   @param type [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type]

              # @see Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement#type
              module Type
                extend Stigg::Internal::Type::Enum

                FEATURE = :FEATURE
                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The pricing type of the package
            #
            # @see Stigg::Models::V1::Events::PlanCreateResponse::Data#pricing_type
            module PricingType
              extend Stigg::Internal::Type::Enum

              FREE = :FREE
              PAID = :PAID
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of the package
            #
            # @see Stigg::Models::V1::Events::PlanCreateResponse::Data#status
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
end
