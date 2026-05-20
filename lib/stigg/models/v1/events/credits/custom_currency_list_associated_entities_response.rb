# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::CustomCurrencies#list_associated_entities
          class CustomCurrencyListAssociatedEntitiesResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Stigg::Models::V1::Events::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data>]
            required :data,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data] }

            # @!method initialize(data:)
            #   List of entities (plans or addons) that reference a custom currency
            #
            #   @param data [Array<Stigg::Models::V1::Events::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data>]

            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The reference ID of the associated entity
              #
              #   @return [String]
              required :id, String

              # @!attribute display_name
              #   The display name of the associated entity
              #
              #   @return [String]
              required :display_name, String, api_name: :displayName

              # @!attribute type
              #   The kind of entity referencing the currency (e.g., Plan)
              #
              #   @return [String]
              required :type, String

              # @!method initialize(id:, display_name:, type:)
              #   An entity (plan or addon) that references a custom currency
              #
              #   @param id [String] The reference ID of the associated entity
              #
              #   @param display_name [String] The display name of the associated entity
              #
              #   @param type [String] The kind of entity referencing the currency (e.g., Plan)
            end
          end
        end
      end
    end
  end
end
