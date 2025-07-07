# typed: strong

module Stigg
  module Resources
    class V1
      class Permissions
        # Check multiple permissions for a user
        sig do
          params(
            user_id: String,
            resources_and_actions:
              T::Array[
                Stigg::V1::PermissionCheckParams::ResourcesAndAction::OrHash
              ],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::PermissionCheckResponse)
        end
        def check(
          # Query param: ID of the user to check permissions for
          user_id:,
          # Body param: List of resources and actions to check permissions for
          resources_and_actions:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
