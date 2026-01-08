# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class PromotionalCreateResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Customers::PromotionalCreateResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Stigg::Models::V1::Customers::PromotionalCreateResponse::Data
              ]
            )
          end
          attr_accessor :data

          sig do
            params(
              data:
                T::Array[
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The description of the entitlement
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The end date of the promotional entitlement
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # The enum values of the entitlement
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :enum_values

            # The unique identifier for the environment
            sig { returns(String) }
            attr_accessor :environment_id

            # Feature group IDs associated with this entitlement
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :feature_group_ids

            # The unique identifier of the entitlement feature
            sig { returns(String) }
            attr_accessor :feature_id

            # Whether the entitlement has a soft limit
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :has_soft_limit

            # Whether the entitlement has an unlimited usage
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :has_unlimited_usage

            # Whether the entitlement is visible
            sig { returns(T::Boolean) }
            attr_accessor :is_visible

            # The grant period of the promotional entitlement
            sig do
              returns(
                Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
              )
            end
            attr_accessor :period

            # The reset period of the entitlement
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )
              )
            end
            attr_accessor :reset_period

            # The reset period configuration of the entitlement
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::Variants
                )
              )
            end
            attr_accessor :reset_period_configuration

            # The start date of the entitlement
            sig { returns(Time) }
            attr_accessor :start_date

            # The status of the entitlement
            sig do
              returns(
                Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The usage limit of the entitlement
            sig { returns(T.nilable(Float)) }
            attr_accessor :usage_limit

            sig do
              params(
                id: String,
                created_at: Time,
                description: T.nilable(String),
                end_date: T.nilable(Time),
                enum_values: T.nilable(T::Array[String]),
                environment_id: String,
                feature_group_ids: T.nilable(T::Array[String]),
                feature_id: String,
                has_soft_limit: T.nilable(T::Boolean),
                has_unlimited_usage: T.nilable(T::Boolean),
                is_visible: T::Boolean,
                period:
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::OrSymbol,
                reset_period:
                  T.nilable(
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::OrSymbol
                  ),
                reset_period_configuration:
                  T.nilable(
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::OrHash
                  ),
                start_date: Time,
                status:
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::OrSymbol,
                updated_at: Time,
                usage_limit: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the entity
              id:,
              # Timestamp of when the record was created
              created_at:,
              # The description of the entitlement
              description:,
              # The end date of the promotional entitlement
              end_date:,
              # The enum values of the entitlement
              enum_values:,
              # The unique identifier for the environment
              environment_id:,
              # Feature group IDs associated with this entitlement
              feature_group_ids:,
              # The unique identifier of the entitlement feature
              feature_id:,
              # Whether the entitlement has a soft limit
              has_soft_limit:,
              # Whether the entitlement has an unlimited usage
              has_unlimited_usage:,
              # Whether the entitlement is visible
              is_visible:,
              # The grant period of the promotional entitlement
              period:,
              # The reset period of the entitlement
              reset_period:,
              # The reset period configuration of the entitlement
              reset_period_configuration:,
              # The start date of the entitlement
              start_date:,
              # The status of the entitlement
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # The usage limit of the entitlement
              usage_limit:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  description: T.nilable(String),
                  end_date: T.nilable(Time),
                  enum_values: T.nilable(T::Array[String]),
                  environment_id: String,
                  feature_group_ids: T.nilable(T::Array[String]),
                  feature_id: String,
                  has_soft_limit: T.nilable(T::Boolean),
                  has_unlimited_usage: T.nilable(T::Boolean),
                  is_visible: T::Boolean,
                  period:
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol,
                  reset_period:
                    T.nilable(
                      Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                    ),
                  reset_period_configuration:
                    T.nilable(
                      Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::Variants
                    ),
                  start_date: Time,
                  status:
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  usage_limit: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            # The grant period of the promotional entitlement
            module Period
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIOD_1_WEEK =
                T.let(
                  :"1 week",
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )
              PERIOD_1_MONTH =
                T.let(
                  :"1 month",
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )
              PERIOD_6_MONTH =
                T.let(
                  :"6 month",
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )
              PERIOD_1_YEAR =
                T.let(
                  :"1 year",
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )
              LIFETIME =
                T.let(
                  :lifetime,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Period::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The reset period of the entitlement
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :YEAR,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )
              WEEK =
                T.let(
                  :WEEK,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )
              DAY =
                T.let(
                  :DAY,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )
              HOUR =
                T.let(
                  :HOUR,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The reset period configuration of the entitlement
            module ResetPeriodConfiguration
              extend Stigg::Internal::Type::Union

              Variants =
                T.type_alias do
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo
                end

              class AccordingTo < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Yearly reset period according to
                sig do
                  returns(
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo::TaggedSymbol
                  )
                end
                attr_accessor :according_to

                sig do
                  params(
                    according_to:
                      Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Yearly reset period according to
                  according_to:
                )
                end

                sig do
                  override.returns(
                    {
                      according_to:
                        Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Yearly reset period according to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::AccordingTo::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::ResetPeriodConfiguration::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            # The status of the entitlement
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :Active,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :Expired,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol
                )
              PAUSED =
                T.let(
                  :Paused,
                  Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalCreateResponse::Data::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
