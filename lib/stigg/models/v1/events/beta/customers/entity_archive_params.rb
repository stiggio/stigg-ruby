# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            # @see Stigg::Resources::V1::Events::Beta::Customers::Entities#archive
            class EntityArchiveParams < Stigg::Internal::Type::BaseModel
              extend Stigg::Internal::Type::RequestParameters::Converter
              include Stigg::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute ids
              #   Entity identifiers to act on
              #
              #   @return [Array<String>]
              required :ids, Stigg::Internal::Type::ArrayOf[String]

              # @!attribute x_account_id
              #
              #   @return [String, nil]
              optional :x_account_id, String

              # @!attribute x_environment_id
              #
              #   @return [String, nil]
              optional :x_environment_id, String

              # @!method initialize(id:, ids:, x_account_id: nil, x_environment_id: nil, request_options: {})
              #   @param id [String]
              #
              #   @param ids [Array<String>] Entity identifiers to act on
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
end
