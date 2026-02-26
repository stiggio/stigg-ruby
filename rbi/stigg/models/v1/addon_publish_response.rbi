# typed: strong

module Stigg
  module Models
    module V1
      class AddonPublishResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::AddonPublishResponse,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(Stigg::Models::V1::AddonPublishResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::AddonPublishResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response containing task ID for publish operation
        sig do
          params(
            data: Stigg::Models::V1::AddonPublishResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::AddonPublishResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::AddonPublishResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Task ID for tracking the async publish operation
          sig { returns(T.nilable(String)) }
          attr_accessor :task_id

          sig { params(task_id: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # Task ID for tracking the async publish operation
            task_id:
          )
          end

          sig { override.returns({ task_id: T.nilable(String) }) }
          def to_hash
          end
        end
      end
    end
  end
end
