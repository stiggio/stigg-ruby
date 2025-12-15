# typed: strong

module Stigg
  module Models
    module V1
      class CustomerListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CustomerListParams, Stigg::Internal::AnyHash)
          end

        # Ending before this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Items per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Starting after this UUID for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig do
          params(
            ending_before: String,
            limit: Integer,
            starting_after: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Ending before this UUID for pagination
          ending_before: nil,
          # Items per page
          limit: nil,
          # Starting after this UUID for pagination
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ending_before: String,
              limit: Integer,
              starting_after: String,
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
