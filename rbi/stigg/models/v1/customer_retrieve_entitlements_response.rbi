# typed: strong

module Stigg
  module Models
    module V1
      class CustomerRetrieveEntitlementsResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CustomerRetrieveEntitlementsResponse,
              Stigg::Internal::AnyHash
            )
          end

        # The effective entitlements state for a customer or resource.
        sig do
          returns(Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data:
              Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The effective entitlements state for a customer or resource.
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Reason why entitlements access was denied, if applicable
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
              )
            )
          end
          attr_accessor :access_denied_reason

          # List of effective feature and credit entitlements
          sig do
            returns(
              T::Array[
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Variants
              ]
            )
          end
          attr_accessor :entitlements

          # The effective entitlements state for a customer or resource.
          sig do
            params(
              access_denied_reason:
                T.nilable(
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::OrSymbol
                ),
              entitlements:
                T::Array[
                  T.any(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::OrHash,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Reason why entitlements access was denied, if applicable
            access_denied_reason:,
            # List of effective feature and credit entitlements
            entitlements:
          )
          end

          sig do
            override.returns(
              {
                access_denied_reason:
                  T.nilable(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
                  ),
                entitlements:
                  T::Array[
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          # Reason why entitlements access was denied, if applicable
          module AccessDeniedReason
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER_NOT_FOUND =
              T.let(
                :CustomerNotFound,
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
              )
            NO_ACTIVE_SUBSCRIPTION =
              T.let(
                :NoActiveSubscription,
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
              )
            CUSTOMER_IS_ARCHIVED =
              T.let(
                :CustomerIsArchived,
                Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::AccessDeniedReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Entitlement
            extend Stigg::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature,
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit
                )
              end

            class Feature < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :access_denied_reason

              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              sig { returns(Symbol) }
              attr_accessor :type

              sig { returns(T.nilable(Float)) }
              attr_reader :current_usage

              sig { params(current_usage: Float).void }
              attr_writer :current_usage

              # Timestamp of the last update to the entitlement grant or configuration.
              sig { returns(T.nilable(Time)) }
              attr_reader :entitlement_updated_at

              sig { params(entitlement_updated_at: Time).void }
              attr_writer :entitlement_updated_at

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature
                  )
                )
              end
              attr_reader :feature

              sig do
                params(
                  feature:
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::OrHash
                ).void
              end
              attr_writer :feature

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_unlimited_usage

              sig { params(has_unlimited_usage: T::Boolean).void }
              attr_writer :has_unlimited_usage

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                )
              end
              attr_accessor :reset_period

              sig { returns(T.nilable(Float)) }
              attr_accessor :usage_limit

              # The anchor for calculating the usage period for metered entitlements with a
              # reset period configured
              sig { returns(T.nilable(Time)) }
              attr_reader :usage_period_anchor

              sig { params(usage_period_anchor: Time).void }
              attr_writer :usage_period_anchor

              # The end date of the usage period for metered entitlements with a reset period
              # configured
              sig { returns(T.nilable(Time)) }
              attr_reader :usage_period_end

              sig { params(usage_period_end: Time).void }
              attr_writer :usage_period_end

              # The start date of the usage period for metered entitlements with a reset period
              # configured
              sig { returns(T.nilable(Time)) }
              attr_reader :usage_period_start

              sig { params(usage_period_start: Time).void }
              attr_writer :usage_period_start

              # The next time the entitlement should be recalculated
              sig { returns(T.nilable(Time)) }
              attr_reader :valid_until

              sig { params(valid_until: Time).void }
              attr_writer :valid_until

              sig do
                params(
                  access_denied_reason:
                    T.nilable(
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::OrSymbol
                    ),
                  is_granted: T::Boolean,
                  current_usage: Float,
                  entitlement_updated_at: Time,
                  feature:
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::OrHash,
                  has_unlimited_usage: T::Boolean,
                  reset_period:
                    T.nilable(
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::OrSymbol
                    ),
                  usage_limit: T.nilable(Float),
                  usage_period_anchor: Time,
                  usage_period_end: Time,
                  usage_period_start: Time,
                  valid_until: Time,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                access_denied_reason:,
                is_granted:,
                current_usage: nil,
                # Timestamp of the last update to the entitlement grant or configuration.
                entitlement_updated_at: nil,
                feature: nil,
                has_unlimited_usage: nil,
                reset_period: nil,
                usage_limit: nil,
                # The anchor for calculating the usage period for metered entitlements with a
                # reset period configured
                usage_period_anchor: nil,
                # The end date of the usage period for metered entitlements with a reset period
                # configured
                usage_period_end: nil,
                # The start date of the usage period for metered entitlements with a reset period
                # configured
                usage_period_start: nil,
                # The next time the entitlement should be recalculated
                valid_until: nil,
                type: :FEATURE
              )
              end

              sig do
                override.returns(
                  {
                    access_denied_reason:
                      T.nilable(
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                      ),
                    is_granted: T::Boolean,
                    type: Symbol,
                    current_usage: Float,
                    entitlement_updated_at: Time,
                    feature:
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature,
                    has_unlimited_usage: T::Boolean,
                    reset_period:
                      T.nilable(
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                      ),
                    usage_limit: T.nilable(Float),
                    usage_period_anchor: Time,
                    usage_period_end: Time,
                    usage_period_start: Time,
                    valid_until: Time
                  }
                )
              end
              def to_hash
              end

              module AccessDeniedReason
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE_NOT_FOUND =
                  T.let(
                    :FeatureNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_NOT_FOUND =
                  T.let(
                    :CustomerNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_IS_ARCHIVED =
                  T.let(
                    :CustomerIsArchived,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_RESOURCE_NOT_FOUND =
                  T.let(
                    :CustomerResourceNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                NO_ACTIVE_SUBSCRIPTION =
                  T.let(
                    :NoActiveSubscription,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION =
                  T.let(
                    :NoFeatureEntitlementInSubscription,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_USAGE_EXCEEDING_LIMIT =
                  T.let(
                    :RequestedUsageExceedingLimit,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_VALUES_MISMATCH =
                  T.let(
                    :RequestedValuesMismatch,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                BUDGET_EXCEEDED =
                  T.let(
                    :BudgetExceeded,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :Unknown,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                FEATURE_TYPE_MISMATCH =
                  T.let(
                    :FeatureTypeMismatch,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                REVOKED =
                  T.let(
                    :Revoked,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                INSUFFICIENT_CREDITS =
                  T.let(
                    :InsufficientCredits,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )
                ENTITLEMENT_NOT_FOUND =
                  T.let(
                    :EntitlementNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::AccessDeniedReason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Feature < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The human-readable name of the entitlement, shown in UI elements.
                sig { returns(String) }
                attr_accessor :display_name

                # The current status of the feature.
                sig do
                  returns(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol
                  )
                end
                attr_accessor :feature_status

                # The type of feature associated with the entitlement.
                sig do
                  returns(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol
                  )
                end
                attr_accessor :feature_type

                # The unique reference ID of the entitlement.
                sig { returns(String) }
                attr_accessor :ref_id

                sig do
                  params(
                    display_name: String,
                    feature_status:
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::OrSymbol,
                    feature_type:
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::OrSymbol,
                    ref_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The human-readable name of the entitlement, shown in UI elements.
                  display_name:,
                  # The current status of the feature.
                  feature_status:,
                  # The type of feature associated with the entitlement.
                  feature_type:,
                  # The unique reference ID of the entitlement.
                  ref_id:
                )
                end

                sig do
                  override.returns(
                    {
                      display_name: String,
                      feature_status:
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol,
                      feature_type:
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol,
                      ref_id: String
                    }
                  )
                end
                def to_hash
                end

                # The current status of the feature.
                module FeatureStatus
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NEW =
                    T.let(
                      :NEW,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol
                    )
                  SUSPENDED =
                    T.let(
                      :SUSPENDED,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol
                    )
                  ACTIVE =
                    T.let(
                      :ACTIVE,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureStatus::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # The type of feature associated with the entitlement.
                module FeatureType
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  BOOLEAN =
                    T.let(
                      :BOOLEAN,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol
                    )
                  NUMBER =
                    T.let(
                      :NUMBER,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol
                    )
                  ENUM =
                    T.let(
                      :ENUM,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::Feature::FeatureType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              module ResetPeriod
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                WEEK =
                  T.let(
                    :WEEK,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :DAY,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                HOUR =
                  T.let(
                    :HOUR,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Feature::ResetPeriod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :access_denied_reason

              # The currency associated with a credit entitlement.
              sig do
                returns(
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::Currency
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::Currency::OrHash
                ).void
              end
              attr_writer :currency

              sig { returns(Float) }
              attr_accessor :current_usage

              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              sig { returns(Symbol) }
              attr_accessor :type

              sig { returns(Float) }
              attr_accessor :usage_limit

              # Timestamp of the last update to the credit usage.
              sig { returns(Time) }
              attr_accessor :usage_updated_at

              # Timestamp of the last update to the entitlement grant or configuration.
              sig { returns(T.nilable(Time)) }
              attr_reader :entitlement_updated_at

              sig { params(entitlement_updated_at: Time).void }
              attr_writer :entitlement_updated_at

              # The end date of the current billing period for recurring credit grants.
              sig { returns(T.nilable(Time)) }
              attr_reader :usage_period_end

              sig { params(usage_period_end: Time).void }
              attr_writer :usage_period_end

              # The next time the entitlement should be recalculated
              sig { returns(T.nilable(Time)) }
              attr_reader :valid_until

              sig { params(valid_until: Time).void }
              attr_writer :valid_until

              sig do
                params(
                  access_denied_reason:
                    T.nilable(
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::OrSymbol
                    ),
                  currency:
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::Currency::OrHash,
                  current_usage: Float,
                  is_granted: T::Boolean,
                  usage_limit: Float,
                  usage_updated_at: Time,
                  entitlement_updated_at: Time,
                  usage_period_end: Time,
                  valid_until: Time,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                access_denied_reason:,
                # The currency associated with a credit entitlement.
                currency:,
                current_usage:,
                is_granted:,
                usage_limit:,
                # Timestamp of the last update to the credit usage.
                usage_updated_at:,
                # Timestamp of the last update to the entitlement grant or configuration.
                entitlement_updated_at: nil,
                # The end date of the current billing period for recurring credit grants.
                usage_period_end: nil,
                # The next time the entitlement should be recalculated
                valid_until: nil,
                type: :CREDIT
              )
              end

              sig do
                override.returns(
                  {
                    access_denied_reason:
                      T.nilable(
                        Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                      ),
                    currency:
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::Currency,
                    current_usage: Float,
                    is_granted: T::Boolean,
                    type: Symbol,
                    usage_limit: Float,
                    usage_updated_at: Time,
                    entitlement_updated_at: Time,
                    usage_period_end: Time,
                    valid_until: Time
                  }
                )
              end
              def to_hash
              end

              module AccessDeniedReason
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE_NOT_FOUND =
                  T.let(
                    :FeatureNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_NOT_FOUND =
                  T.let(
                    :CustomerNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_IS_ARCHIVED =
                  T.let(
                    :CustomerIsArchived,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_RESOURCE_NOT_FOUND =
                  T.let(
                    :CustomerResourceNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                NO_ACTIVE_SUBSCRIPTION =
                  T.let(
                    :NoActiveSubscription,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION =
                  T.let(
                    :NoFeatureEntitlementInSubscription,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_USAGE_EXCEEDING_LIMIT =
                  T.let(
                    :RequestedUsageExceedingLimit,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_VALUES_MISMATCH =
                  T.let(
                    :RequestedValuesMismatch,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                BUDGET_EXCEEDED =
                  T.let(
                    :BudgetExceeded,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :Unknown,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                FEATURE_TYPE_MISMATCH =
                  T.let(
                    :FeatureTypeMismatch,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                REVOKED =
                  T.let(
                    :Revoked,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                INSUFFICIENT_CREDITS =
                  T.let(
                    :InsufficientCredits,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )
                ENTITLEMENT_NOT_FOUND =
                  T.let(
                    :EntitlementNotFound,
                    Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::AccessDeniedReason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Currency < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Credit::Currency,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The unique identifier of the custom currency.
                sig { returns(String) }
                attr_accessor :currency_id

                # The display name of the currency.
                sig { returns(String) }
                attr_accessor :display_name

                # Additional metadata associated with the currency.
                sig { returns(T.nilable(T.anything)) }
                attr_reader :additional_meta_data

                sig { params(additional_meta_data: T.anything).void }
                attr_writer :additional_meta_data

                # A description of the currency.
                sig { returns(T.nilable(String)) }
                attr_accessor :description

                # The plural form of the currency unit.
                sig { returns(T.nilable(String)) }
                attr_accessor :unit_plural

                # The singular form of the currency unit.
                sig { returns(T.nilable(String)) }
                attr_accessor :unit_singular

                # The currency associated with a credit entitlement.
                sig do
                  params(
                    currency_id: String,
                    display_name: String,
                    additional_meta_data: T.anything,
                    description: T.nilable(String),
                    unit_plural: T.nilable(String),
                    unit_singular: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The unique identifier of the custom currency.
                  currency_id:,
                  # The display name of the currency.
                  display_name:,
                  # Additional metadata associated with the currency.
                  additional_meta_data: nil,
                  # A description of the currency.
                  description: nil,
                  # The plural form of the currency unit.
                  unit_plural: nil,
                  # The singular form of the currency unit.
                  unit_singular: nil
                )
                end

                sig do
                  override.returns(
                    {
                      currency_id: String,
                      display_name: String,
                      additional_meta_data: T.anything,
                      description: T.nilable(String),
                      unit_plural: T.nilable(String),
                      unit_singular: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CustomerRetrieveEntitlementsResponse::Data::Entitlement::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
