# typed: strong

module Stigg
  module Models
    module V1
      module Plans
        class EntitlementDeleteParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Plans::EntitlementDeleteParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :plan_id

          sig do
            params(
              plan_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(plan_id:, request_options: {})
          end

          sig do
            override.returns(
              { plan_id: String, request_options: Stigg::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
