# typed: strong

module Stigg
  module Models
    module V1
      class PlanRemoveDraftResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::PlanRemoveDraftResponse,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(Stigg::Models::V1::PlanRemoveDraftResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::PlanRemoveDraftResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response confirming the plan draft was removed.
        sig do
          params(
            data: Stigg::Models::V1::PlanRemoveDraftResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::PlanRemoveDraftResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::PlanRemoveDraftResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the entity
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the entity
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
