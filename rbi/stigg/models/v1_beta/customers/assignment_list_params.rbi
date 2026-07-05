# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class AssignmentListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::Customers::AssignmentListParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Return items that come after this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Return items that come before this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # Filter assignments to a specific currency, by its ID. Mutually exclusive with
          # `featureId`.
          sig { returns(T.nilable(String)) }
          attr_reader :currency_id

          sig { params(currency_id: String).void }
          attr_writer :currency_id

          # Filter assignments to a specific entity ID
          sig { returns(T.nilable(String)) }
          attr_reader :entity_id

          sig { params(entity_id: String).void }
          attr_writer :entity_id

          # Filter assignments to a specific feature, by its ID. Mutually exclusive with
          # `currencyId`.
          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          # Maximum number of items to return
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_reader :x_account_id

          sig { params(x_account_id: String).void }
          attr_writer :x_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_environment_id

          sig { params(x_environment_id: String).void }
          attr_writer :x_environment_id

          sig do
            params(
              id: String,
              after: String,
              before: String,
              currency_id: String,
              entity_id: String,
              feature_id: String,
              limit: Integer,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Filter assignments to a specific currency, by its ID. Mutually exclusive with
            # `featureId`.
            currency_id: nil,
            # Filter assignments to a specific entity ID
            entity_id: nil,
            # Filter assignments to a specific feature, by its ID. Mutually exclusive with
            # `currencyId`.
            feature_id: nil,
            # Maximum number of items to return
            limit: nil,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                after: String,
                before: String,
                currency_id: String,
                entity_id: String,
                feature_id: String,
                limit: Integer,
                x_account_id: String,
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
end
