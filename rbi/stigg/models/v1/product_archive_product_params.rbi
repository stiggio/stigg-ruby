# typed: strong

module Stigg
  module Models
    module V1
      class ProductArchiveProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::ProductArchiveProductParams,
              Stigg::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Stigg::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Stigg::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
