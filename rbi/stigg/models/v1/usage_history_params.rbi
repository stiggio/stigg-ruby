# typed: strong

module Stigg
  module Models
    module V1
      class UsageHistoryParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::UsageHistoryParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # The start date of the range
        sig { returns(Time) }
        attr_accessor :start_date

        # The end date of the range
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        sig { returns(T.nilable(String)) }
        attr_reader :group_by

        sig { params(group_by: String).void }
        attr_writer :group_by

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        sig do
          params(
            customer_id: String,
            start_date: Time,
            end_date: Time,
            group_by: String,
            resource_id: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # The start date of the range
          start_date:,
          # The end date of the range
          end_date: nil,
          group_by: nil,
          # Resource id
          resource_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              start_date: Time,
              end_date: Time,
              group_by: String,
              resource_id: T.nilable(String),
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
