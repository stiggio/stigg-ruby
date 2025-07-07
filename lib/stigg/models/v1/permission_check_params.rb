# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Permissions#check
      class PermissionCheckParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute user_id
        #   ID of the user to check permissions for
        #
        #   @return [String]
        required :user_id, String

        # @!attribute resources_and_actions
        #   List of resources and actions to check permissions for
        #
        #   @return [Array<Stigg::Models::V1::PermissionCheckParams::ResourcesAndAction>]
        required :resources_and_actions,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::PermissionCheckParams::ResourcesAndAction] },
                 api_name: :resourcesAndActions

        # @!method initialize(user_id:, resources_and_actions:, request_options: {})
        #   @param user_id [String] ID of the user to check permissions for
        #
        #   @param resources_and_actions [Array<Stigg::Models::V1::PermissionCheckParams::ResourcesAndAction>] List of resources and actions to check permissions for
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class ResourcesAndAction < Stigg::Internal::Type::BaseModel
          # @!attribute action
          #   Action to check permissions for
          #
          #   @return [Object]
          required :action, Stigg::Internal::Type::Unknown

          # @!attribute resource
          #   Resource to check permissions for
          #
          #   @return [String]
          required :resource, String

          # @!method initialize(action:, resource:)
          #   Data transfer object for resource and action pair
          #
          #   @param action [Object] Action to check permissions for
          #
          #   @param resource [String] Resource to check permissions for
        end
      end
    end
  end
end
