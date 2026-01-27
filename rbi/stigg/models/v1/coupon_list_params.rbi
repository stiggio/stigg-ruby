# typed: strong

module Stigg
  module Models
    module V1
      class CouponListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CouponListParams, Stigg::Internal::AnyHash)
          end

        # Starting after this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Ending before this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Items per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Starting after this UUID for pagination
          after: nil,
          # Ending before this UUID for pagination
          before: nil,
          # Items per page
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              limit: Integer,
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
