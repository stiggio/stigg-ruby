# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::EntityTypes#list
      class EntityTypeListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

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
        #   Whether to include archived entity types. One of: true, false
        #
        #   @return [Symbol, Stigg::Models::V1::EntityTypeListParams::IncludeArchived, nil]
        optional :include_archived, enum: -> { Stigg::V1::EntityTypeListParams::IncludeArchived }

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

        # @!method initialize(after: nil, before: nil, include_archived: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param include_archived [Symbol, Stigg::Models::V1::EntityTypeListParams::IncludeArchived] Whether to include archived entity types. One of: true, false
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # Whether to include archived entity types. One of: true, false
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
