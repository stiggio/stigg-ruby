# typed: strong

module Stigg
  module Models
    module V1
      class CustomerListResourcesResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CustomerListResourcesResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Resource slug
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the record was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Timestamp of when the record was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Resource object that belongs to a customer
        sig do
          params(id: String, created_at: Time, updated_at: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # Resource slug
          id:,
          # Timestamp of when the record was created
          created_at:,
          # Timestamp of when the record was last updated
          updated_at:
        )
        end

        sig do
          override.returns({ id: String, created_at: Time, updated_at: Time })
        end
        def to_hash
        end
      end
    end
  end
end
