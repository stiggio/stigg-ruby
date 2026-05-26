# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityIDsRequestDto < Stigg::Internal::Type::BaseModel
          # @!attribute ids
          #   Entity identifiers to act on
          #
          #   @return [Array<String>]
          required :ids, Stigg::Internal::Type::ArrayOf[String]

          # @!method initialize(ids:)
          #   List of entity identifiers to act on in bulk (1-100 entries)
          #
          #   @param ids [Array<String>] Entity identifiers to act on
        end
      end
    end
  end
end
