# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          # @see Stigg::Resources::V1::Events::Beta::EntityTypes#list
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

            # @!method initialize(after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #   @param after [String] Return items that come after this cursor
            #
            #   @param before [String] Return items that come before this cursor
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
