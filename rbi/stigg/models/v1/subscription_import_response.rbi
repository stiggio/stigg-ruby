# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionImportResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::SubscriptionImportResponse,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(Stigg::Models::V1::SubscriptionImportResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::SubscriptionImportResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::SubscriptionImportResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::SubscriptionImportResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::SubscriptionImportResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Unique identifier for the import task
          sig { returns(String) }
          attr_accessor :task_id

          sig { params(task_id: String).returns(T.attached_class) }
          def self.new(
            # Unique identifier for the import task
            task_id:
          )
          end

          sig { override.returns({ task_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
