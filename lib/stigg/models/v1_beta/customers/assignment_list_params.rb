# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Assignments#list
        class AssignmentListParams < Stigg::Internal::Type::BaseModel
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

          # @!attribute capability_id
          #   Filter assignments to a specific capability refId
          #
          #   @return [String, nil]
          optional :capability_id, String

          # @!attribute entity_id
          #   Filter assignments to a specific entity refId
          #
          #   @return [String, nil]
          optional :entity_id, String

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(id:, after: nil, before: nil, capability_id: nil, entity_id: nil, limit: nil, request_options: {})
          #   @param id [String]
          #
          #   @param after [String] Return items that come after this cursor
          #
          #   @param before [String] Return items that come before this cursor
          #
          #   @param capability_id [String] Filter assignments to a specific capability refId
          #
          #   @param entity_id [String] Filter assignments to a specific entity refId
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
