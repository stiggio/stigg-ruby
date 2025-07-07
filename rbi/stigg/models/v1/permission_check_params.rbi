# typed: strong

module Stigg
  module Models
    module V1
      class PermissionCheckParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::PermissionCheckParams, Stigg::Internal::AnyHash)
          end

        # ID of the user to check permissions for
        sig { returns(String) }
        attr_accessor :user_id

        # List of resources and actions to check permissions for
        sig do
          returns(
            T::Array[Stigg::V1::PermissionCheckParams::ResourcesAndAction]
          )
        end
        attr_accessor :resources_and_actions

        sig do
          params(
            user_id: String,
            resources_and_actions:
              T::Array[
                Stigg::V1::PermissionCheckParams::ResourcesAndAction::OrHash
              ],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the user to check permissions for
          user_id:,
          # List of resources and actions to check permissions for
          resources_and_actions:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              resources_and_actions:
                T::Array[Stigg::V1::PermissionCheckParams::ResourcesAndAction],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ResourcesAndAction < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::PermissionCheckParams::ResourcesAndAction,
                Stigg::Internal::AnyHash
              )
            end

          # Action to check permissions for
          sig { returns(T.anything) }
          attr_accessor :action

          # Resource to check permissions for
          sig { returns(String) }
          attr_accessor :resource

          # Data transfer object for resource and action pair
          sig do
            params(action: T.anything, resource: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Action to check permissions for
            action:,
            # Resource to check permissions for
            resource:
          )
          end

          sig { override.returns({ action: T.anything, resource: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
