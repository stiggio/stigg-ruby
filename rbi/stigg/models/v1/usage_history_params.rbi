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

        sig { returns(String) }
        attr_accessor :feature_id

        # The start date of the range
        sig { returns(Time) }
        attr_accessor :start_date

        # The end date of the range
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        # Criteria by which to group the usage history
        sig { returns(T.nilable(String)) }
        attr_reader :group_by

        sig { params(group_by: String).void }
        attr_writer :group_by

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

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
            customer_id: String,
            feature_id: String,
            start_date: Time,
            end_date: Time,
            group_by: String,
            resource_id: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          feature_id:,
          # The start date of the range
          start_date:,
          # The end date of the range
          end_date: nil,
          # Criteria by which to group the usage history
          group_by: nil,
          # Resource id
          resource_id: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              feature_id: String,
              start_date: Time,
              end_date: Time,
              group_by: String,
              resource_id: T.nilable(String),
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
