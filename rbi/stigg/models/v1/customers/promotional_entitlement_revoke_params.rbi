# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class PromotionalEntitlementRevokeParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::PromotionalEntitlementRevokeParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :feature_id

          sig do
            params(
              id: String,
              feature_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, feature_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                id: String,
                feature_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
