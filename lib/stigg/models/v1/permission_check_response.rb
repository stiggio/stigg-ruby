# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Permissions#check
      class PermissionCheckResponse < Stigg::Internal::Type::BaseModel
        # @!attribute permitted_list
        #   List of booleans indicating whether the user has access to each resource and
        #   action correspondingly
        #
        #   @return [Array<Boolean>]
        required :permitted_list,
                 Stigg::Internal::Type::ArrayOf[Stigg::Internal::Type::Boolean],
                 api_name: :permittedList

        # @!method initialize(permitted_list:)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::PermissionCheckResponse} for more details.
        #
        #   Response for checking permissions
        #
        #   @param permitted_list [Array<Boolean>] List of booleans indicating whether the user has access to each resource and act
      end
    end
  end
end
