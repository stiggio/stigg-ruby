# typed: strong

module Stigg
  module Models
    module V2
      class CustomerRetrieveParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V2::CustomerRetrieveParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :x_api_key

        sig { returns(String) }
        attr_accessor :x_environment_id

        sig do
          params(
            x_api_key: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(x_api_key:, x_environment_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              x_api_key: String,
              x_environment_id: String,
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
