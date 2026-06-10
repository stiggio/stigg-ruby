# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Entities#list
        class EntityListParams < Stigg::Internal::Type::BaseModel
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

          # @!attribute include_archived
          #   Whether to include archived entities. One of: true, false
          #
          #   @return [Symbol, Stigg::Models::V1Beta::Customers::EntityListParams::IncludeArchived, nil]
          optional :include_archived, enum: -> { Stigg::V1Beta::Customers::EntityListParams::IncludeArchived }

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute type_ref_id
          #   Filter results to entities of a specific entity type, by the type's refId
          #
          #   @return [String, nil]
          optional :type_ref_id, String

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(id:, after: nil, before: nil, include_archived: nil, limit: nil, type_ref_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param id [String]
          #
          #   @param after [String] Return items that come after this cursor
          #
          #   @param before [String] Return items that come before this cursor
          #
          #   @param include_archived [Symbol, Stigg::Models::V1Beta::Customers::EntityListParams::IncludeArchived] Whether to include archived entities. One of: true, false
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param type_ref_id [String] Filter results to entities of a specific entity type, by the type's refId
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # Whether to include archived entities. One of: true, false
          module IncludeArchived
            extend Stigg::Internal::Type::Enum

            TRUE = :true
            FALSE = :false

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
