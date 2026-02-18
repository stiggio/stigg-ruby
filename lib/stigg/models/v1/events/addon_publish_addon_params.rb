# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Addons#publish_addon
        class AddonPublishAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute migration_type
          #   The migration type of the package
          #
          #   @return [Symbol, Stigg::Models::V1::Events::AddonPublishAddonParams::MigrationType]
          required :migration_type,
                   enum: -> { Stigg::V1::Events::AddonPublishAddonParams::MigrationType },
                   api_name: :migrationType

          # @!method initialize(migration_type:, request_options: {})
          #   @param migration_type [Symbol, Stigg::Models::V1::Events::AddonPublishAddonParams::MigrationType] The migration type of the package
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
end
