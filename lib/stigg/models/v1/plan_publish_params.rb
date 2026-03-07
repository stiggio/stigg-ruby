# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Plans#publish
      class PlanPublishParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute migration_type
        #   The migration type of the package
        #
        #   @return [Symbol, Stigg::Models::V1::PlanPublishParams::MigrationType]
        required :migration_type,
                 enum: -> { Stigg::V1::PlanPublishParams::MigrationType },
                 api_name: :migrationType

        # @!method initialize(id:, migration_type:, request_options: {})
        #   @param id [String]
        #
        #   @param migration_type [Symbol, Stigg::Models::V1::PlanPublishParams::MigrationType] The migration type of the package
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # The migration type of the package
        module MigrationType
          extend Stigg::Internal::Type::Enum

          NEW_CUSTOMERS = :NEW_CUSTOMERS
          ALL_CUSTOMERS = :ALL_CUSTOMERS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
