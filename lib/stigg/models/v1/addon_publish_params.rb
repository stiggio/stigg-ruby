# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Addons#publish
      class AddonPublishParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute migration_type
        #   Who the published version applies to: NEW_CUSTOMERS (default) leaves existing
        #   subscribers on their current version, ALL_CUSTOMERS moves them onto the new
        #   version immediately.
        #
        #   @return [Symbol, Stigg::Models::V1::AddonPublishParams::MigrationType]
        required :migration_type,
                 enum: -> { Stigg::V1::AddonPublishParams::MigrationType },
                 api_name: :migrationType

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, migration_type:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::AddonPublishParams} for more details.
        #
        #   @param id [String]
        #
        #   @param migration_type [Symbol, Stigg::Models::V1::AddonPublishParams::MigrationType] Who the published version applies to: NEW_CUSTOMERS (default) leaves existing su
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # Who the published version applies to: NEW_CUSTOMERS (default) leaves existing
        # subscribers on their current version, ALL_CUSTOMERS moves them onto the new
        # version immediately.
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
