# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionProvisionResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::SubscriptionProvisionResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Provisioning result with status and subscription or checkout URL.
        sig { returns(Stigg::Models::V1::SubscriptionProvisionResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::SubscriptionProvisionResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::SubscriptionProvisionResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Provisioning result with status and subscription or checkout URL.
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::SubscriptionProvisionResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::SubscriptionProvisionResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Unique identifier for the provisioned subscription
          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Variants
                ]
              )
            )
          end
          attr_accessor :entitlements

          # Provision status: SUCCESS or PAYMENT_REQUIRED
          sig do
            returns(
              Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Created subscription (when status is SUCCESS)
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription
              )
            )
          end
          attr_reader :subscription

          sig do
            params(
              subscription:
                T.nilable(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::OrHash
                )
            ).void
          end
          attr_writer :subscription

          # Checkout billing ID when payment is required
          sig { returns(T.nilable(String)) }
          attr_reader :checkout_billing_id

          sig { params(checkout_billing_id: String).void }
          attr_writer :checkout_billing_id

          # URL to complete payment when PAYMENT_REQUIRED
          sig { returns(T.nilable(String)) }
          attr_reader :checkout_url

          sig { params(checkout_url: String).void }
          attr_writer :checkout_url

          # Whether the subscription is scheduled for future activation
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_scheduled

          sig { params(is_scheduled: T::Boolean).void }
          attr_writer :is_scheduled

          # Provisioning result with status and subscription or checkout URL.
          sig do
            params(
              id: String,
              entitlements:
                T.nilable(
                  T::Array[
                    T.any(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::OrHash,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::OrHash
                    )
                  ]
                ),
              status:
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::OrSymbol,
              subscription:
                T.nilable(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::OrHash
                ),
              checkout_billing_id: String,
              checkout_url: String,
              is_scheduled: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the provisioned subscription
            id:,
            entitlements:,
            # Provision status: SUCCESS or PAYMENT_REQUIRED
            status:,
            # Created subscription (when status is SUCCESS)
            subscription:,
            # Checkout billing ID when payment is required
            checkout_billing_id: nil,
            # URL to complete payment when PAYMENT_REQUIRED
            checkout_url: nil,
            # Whether the subscription is scheduled for future activation
            is_scheduled: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                entitlements:
                  T.nilable(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Variants
                    ]
                  ),
                status:
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::TaggedSymbol,
                subscription:
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription
                  ),
                checkout_billing_id: String,
                checkout_url: String,
                is_scheduled: T::Boolean
              }
            )
          end
          def to_hash
          end

          module Entitlement
            extend Stigg::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement
                )
              end

            class SubscriptionFeatureEntitlement < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :access_denied_reason

              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              sig do
                returns(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type::TaggedSymbol
                )
              end
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
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature
                  )
                )
              end
              attr_reader :feature

              sig do
                params(
                  feature:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::OrHash
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
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::OrSymbol
                    ),
                  is_granted: T::Boolean,
                  type:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type::OrSymbol,
                  current_usage: Float,
                  entitlement_updated_at: Time,
                  feature:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::OrHash,
                  has_unlimited_usage: T::Boolean,
                  reset_period:
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::OrSymbol
                    ),
                  usage_limit: T.nilable(Float),
                  usage_period_anchor: Time,
                  usage_period_end: Time,
                  usage_period_start: Time,
                  valid_until: Time
                ).returns(T.attached_class)
              end
              def self.new(
                access_denied_reason:,
                is_granted:,
                type:,
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
                valid_until: nil
              )
              end

              sig do
                override.returns(
                  {
                    access_denied_reason:
                      T.nilable(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                      ),
                    is_granted: T::Boolean,
                    type:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type::TaggedSymbol,
                    current_usage: Float,
                    entitlement_updated_at: Time,
                    feature:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature,
                    has_unlimited_usage: T::Boolean,
                    reset_period:
                      T.nilable(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE_NOT_FOUND =
                  T.let(
                    :FeatureNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_NOT_FOUND =
                  T.let(
                    :CustomerNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_IS_ARCHIVED =
                  T.let(
                    :CustomerIsArchived,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_RESOURCE_NOT_FOUND =
                  T.let(
                    :CustomerResourceNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                NO_ACTIVE_SUBSCRIPTION =
                  T.let(
                    :NoActiveSubscription,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION =
                  T.let(
                    :NoFeatureEntitlementInSubscription,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_USAGE_EXCEEDING_LIMIT =
                  T.let(
                    :RequestedUsageExceedingLimit,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_VALUES_MISMATCH =
                  T.let(
                    :RequestedValuesMismatch,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                BUDGET_EXCEEDED =
                  T.let(
                    :BudgetExceeded,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :Unknown,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                FEATURE_TYPE_MISMATCH =
                  T.let(
                    :FeatureTypeMismatch,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REVOKED =
                  T.let(
                    :Revoked,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                INSUFFICIENT_CREDITS =
                  T.let(
                    :InsufficientCredits,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                ENTITLEMENT_NOT_FOUND =
                  T.let(
                    :EntitlementNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::AccessDeniedReason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module Type
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE =
                  T.let(
                    :FEATURE,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Type::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The human-readable name of the entitlement, shown in UI elements.
                sig { returns(String) }
                attr_accessor :display_name

                # The current status of the feature.
                sig do
                  returns(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol
                  )
                end
                attr_accessor :feature_status

                # The type of feature associated with the entitlement.
                sig do
                  returns(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::OrSymbol,
                    feature_type:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::OrSymbol,
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
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol,
                      feature_type:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol,
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
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NEW =
                    T.let(
                      :NEW,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol
                    )
                  SUSPENDED =
                    T.let(
                      :SUSPENDED,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol
                    )
                  ACTIVE =
                    T.let(
                      :ACTIVE,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureStatus::TaggedSymbol
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
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  BOOLEAN =
                    T.let(
                      :BOOLEAN,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol
                    )
                  NUMBER =
                    T.let(
                      :NUMBER,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol
                    )
                  ENUM =
                    T.let(
                      :ENUM,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::Feature::FeatureType::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                  )
                WEEK =
                  T.let(
                    :WEEK,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :DAY,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                  )
                HOUR =
                  T.let(
                    :HOUR,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionFeatureEntitlement::ResetPeriod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class SubscriptionCreditEntitlement < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :access_denied_reason

              # The currency associated with a credit entitlement.
              sig do
                returns(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Currency
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Currency::OrHash
                ).void
              end
              attr_writer :currency

              sig { returns(Float) }
              attr_accessor :current_usage

              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              sig do
                returns(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type::TaggedSymbol
                )
              end
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

              # The next time the entitlement should be recalculated
              sig { returns(T.nilable(Time)) }
              attr_reader :valid_until

              sig { params(valid_until: Time).void }
              attr_writer :valid_until

              sig do
                params(
                  access_denied_reason:
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::OrSymbol
                    ),
                  currency:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Currency::OrHash,
                  current_usage: Float,
                  is_granted: T::Boolean,
                  type:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type::OrSymbol,
                  usage_limit: Float,
                  usage_updated_at: Time,
                  entitlement_updated_at: Time,
                  valid_until: Time
                ).returns(T.attached_class)
              end
              def self.new(
                access_denied_reason:,
                # The currency associated with a credit entitlement.
                currency:,
                current_usage:,
                is_granted:,
                type:,
                usage_limit:,
                # Timestamp of the last update to the credit usage.
                usage_updated_at:,
                # Timestamp of the last update to the entitlement grant or configuration.
                entitlement_updated_at: nil,
                # The next time the entitlement should be recalculated
                valid_until: nil
              )
              end

              sig do
                override.returns(
                  {
                    access_denied_reason:
                      T.nilable(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                      ),
                    currency:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Currency,
                    current_usage: Float,
                    is_granted: T::Boolean,
                    type:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type::TaggedSymbol,
                    usage_limit: Float,
                    usage_updated_at: Time,
                    entitlement_updated_at: Time,
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE_NOT_FOUND =
                  T.let(
                    :FeatureNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_NOT_FOUND =
                  T.let(
                    :CustomerNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_IS_ARCHIVED =
                  T.let(
                    :CustomerIsArchived,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                CUSTOMER_RESOURCE_NOT_FOUND =
                  T.let(
                    :CustomerResourceNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                NO_ACTIVE_SUBSCRIPTION =
                  T.let(
                    :NoActiveSubscription,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                NO_FEATURE_ENTITLEMENT_IN_SUBSCRIPTION =
                  T.let(
                    :NoFeatureEntitlementInSubscription,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_USAGE_EXCEEDING_LIMIT =
                  T.let(
                    :RequestedUsageExceedingLimit,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REQUESTED_VALUES_MISMATCH =
                  T.let(
                    :RequestedValuesMismatch,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                BUDGET_EXCEEDED =
                  T.let(
                    :BudgetExceeded,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :Unknown,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                FEATURE_TYPE_MISMATCH =
                  T.let(
                    :FeatureTypeMismatch,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                REVOKED =
                  T.let(
                    :Revoked,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                INSUFFICIENT_CREDITS =
                  T.let(
                    :InsufficientCredits,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )
                ENTITLEMENT_NOT_FOUND =
                  T.let(
                    :EntitlementNotFound,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::AccessDeniedReason::TaggedSymbol
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
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Currency,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The unique identifier of the custom currency.
                sig { returns(String) }
                attr_accessor :currency_id

                # The currency associated with a credit entitlement.
                sig { params(currency_id: String).returns(T.attached_class) }
                def self.new(
                  # The unique identifier of the custom currency.
                  currency_id:
                )
                end

                sig { override.returns({ currency_id: String }) }
                def to_hash
                end
              end

              module Type
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT =
                  T.let(
                    :CREDIT,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::SubscriptionCreditEntitlement::Type::TaggedSymbol
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
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # Provision status: SUCCESS or PAYMENT_REQUIRED
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCESS =
              T.let(
                :SUCCESS,
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::TaggedSymbol
              )
            PAYMENT_REQUIRED =
              T.let(
                :PAYMENT_REQUIRED,
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Subscription < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription,
                  Stigg::Internal::AnyHash
                )
              end

            # Subscription ID
            sig { returns(String) }
            attr_accessor :id

            # Billing ID
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_id

            # Created at
            sig { returns(Time) }
            attr_accessor :created_at

            # Customer ID
            sig { returns(String) }
            attr_accessor :customer_id

            # Payment collection
            sig do
              returns(
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
              )
            end
            attr_accessor :payment_collection

            # Plan ID
            sig { returns(String) }
            attr_accessor :plan_id

            # Pricing type
            sig do
              returns(
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol
              )
            end
            attr_accessor :pricing_type

            # Subscription start date
            sig { returns(Time) }
            attr_accessor :start_date

            # Subscription status
            sig do
              returns(
                Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Subscription cancellation date
            sig { returns(T.nilable(Time)) }
            attr_accessor :cancellation_date

            # Subscription cancel reason
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              )
            end
            attr_accessor :cancel_reason

            # End of the current billing period
            sig { returns(T.nilable(Time)) }
            attr_accessor :current_billing_period_end

            # Start of the current billing period
            sig { returns(T.nilable(Time)) }
            attr_accessor :current_billing_period_start

            # Subscription effective end date
            sig { returns(T.nilable(Time)) }
            attr_accessor :effective_end_date

            # Subscription end date
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # Additional metadata for the subscription
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # Paying customer ID for delegated billing
            sig { returns(T.nilable(String)) }
            attr_accessor :paying_customer_id

            # The method used to collect payments for a subscription
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                )
              )
            end
            attr_accessor :payment_collection_method

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price
                  ]
                )
              )
            end
            attr_reader :prices

            sig do
              params(
                prices:
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::OrHash
                  ]
              ).void
            end
            attr_writer :prices

            # Resource ID
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # Subscription trial end date
            sig { returns(T.nilable(Time)) }
            attr_accessor :trial_end_date

            # Created subscription (when status is SUCCESS)
            sig do
              params(
                id: String,
                billing_id: T.nilable(String),
                created_at: Time,
                customer_id: String,
                payment_collection:
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::OrSymbol,
                plan_id: String,
                pricing_type:
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::OrSymbol,
                start_date: Time,
                status:
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::OrSymbol,
                cancellation_date: T.nilable(Time),
                cancel_reason:
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::OrSymbol
                  ),
                current_billing_period_end: T.nilable(Time),
                current_billing_period_start: T.nilable(Time),
                effective_end_date: T.nilable(Time),
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                paying_customer_id: T.nilable(String),
                payment_collection_method:
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::OrSymbol
                  ),
                prices:
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::OrHash
                  ],
                resource_id: T.nilable(String),
                trial_end_date: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # Subscription ID
              id:,
              # Billing ID
              billing_id:,
              # Created at
              created_at:,
              # Customer ID
              customer_id:,
              # Payment collection
              payment_collection:,
              # Plan ID
              plan_id:,
              # Pricing type
              pricing_type:,
              # Subscription start date
              start_date:,
              # Subscription status
              status:,
              # Subscription cancellation date
              cancellation_date: nil,
              # Subscription cancel reason
              cancel_reason: nil,
              # End of the current billing period
              current_billing_period_end: nil,
              # Start of the current billing period
              current_billing_period_start: nil,
              # Subscription effective end date
              effective_end_date: nil,
              # Subscription end date
              end_date: nil,
              # Additional metadata for the subscription
              metadata: nil,
              # Paying customer ID for delegated billing
              paying_customer_id: nil,
              # The method used to collect payments for a subscription
              payment_collection_method: nil,
              prices: nil,
              # Resource ID
              resource_id: nil,
              # Subscription trial end date
              trial_end_date: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  billing_id: T.nilable(String),
                  created_at: Time,
                  customer_id: String,
                  payment_collection:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol,
                  plan_id: String,
                  pricing_type:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol,
                  start_date: Time,
                  status:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol,
                  cancellation_date: T.nilable(Time),
                  cancel_reason:
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                    ),
                  current_billing_period_end: T.nilable(Time),
                  current_billing_period_start: T.nilable(Time),
                  effective_end_date: T.nilable(Time),
                  end_date: T.nilable(Time),
                  metadata: T::Hash[Symbol, String],
                  paying_customer_id: T.nilable(String),
                  payment_collection_method:
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                    ),
                  prices:
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price
                    ],
                  resource_id: T.nilable(String),
                  trial_end_date: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            # Payment collection
            module PaymentCollection
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NOT_REQUIRED =
                T.let(
                  :NOT_REQUIRED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
                )
              PROCESSING =
                T.let(
                  :PROCESSING,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
                )
              FAILED =
                T.let(
                  :FAILED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
                )
              ACTION_REQUIRED =
                T.let(
                  :ACTION_REQUIRED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Pricing type
            module PricingType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FREE =
                T.let(
                  :FREE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Subscription status
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_PENDING =
                T.let(
                  :PAYMENT_PENDING,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )
              ACTIVE =
                T.let(
                  :ACTIVE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :EXPIRED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )
              IN_TRIAL =
                T.let(
                  :IN_TRIAL,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )
              NOT_STARTED =
                T.let(
                  :NOT_STARTED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Subscription cancel reason
            module CancelReason
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UPGRADE_OR_DOWNGRADE =
                T.let(
                  :UPGRADE_OR_DOWNGRADE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              CANCELLED_BY_BILLING =
                T.let(
                  :CANCELLED_BY_BILLING,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :EXPIRED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              DETACH_BILLING =
                T.let(
                  :DETACH_BILLING,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              TRIAL_ENDED =
                T.let(
                  :TRIAL_ENDED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              IMMEDIATE =
                T.let(
                  :Immediate,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              TRIAL_CONVERTED =
                T.let(
                  :TRIAL_CONVERTED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              PENDING_PAYMENT_EXPIRED =
                T.let(
                  :PENDING_PAYMENT_EXPIRED,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              SCHEDULED_CANCELLATION =
                T.let(
                  :ScheduledCancellation,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              CUSTOMER_ARCHIVED =
                T.let(
                  :CustomerArchived,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )
              AUTO_CANCELLATION_RULE =
                T.let(
                  :AutoCancellationRule,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The method used to collect payments for a subscription
            module PaymentCollectionMethod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGE =
                T.let(
                  :CHARGE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                )
              INVOICE =
                T.let(
                  :INVOICE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                )
              NONE =
                T.let(
                  :NONE,
                  Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Price < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price,
                    Stigg::Internal::AnyHash
                  )
                end

              # Addon identifier for the price override
              sig { returns(T.nilable(String)) }
              attr_accessor :addon_id

              # Whether this is a base charge override
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :base_charge

              sig { params(base_charge: T::Boolean).void }
              attr_writer :base_charge

              # Block size for pricing
              sig { returns(T.nilable(Float)) }
              attr_reader :block_size

              sig { params(block_size: Float).void }
              attr_writer :block_size

              # Feature identifier for the price override
              sig { returns(T.nilable(String)) }
              attr_accessor :feature_id

              # Override price amount
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price
                  )
                )
              end
              attr_reader :price

              sig do
                params(
                  price:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::OrHash
                ).void
              end
              attr_writer :price

              # Pricing tiers configuration
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::OrHash
                    ]
                ).void
              end
              attr_writer :tiers

              sig do
                params(
                  addon_id: T.nilable(String),
                  base_charge: T::Boolean,
                  block_size: Float,
                  feature_id: T.nilable(String),
                  price:
                    Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::OrHash,
                  tiers:
                    T::Array[
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Addon identifier for the price override
                addon_id: nil,
                # Whether this is a base charge override
                base_charge: nil,
                # Block size for pricing
                block_size: nil,
                # Feature identifier for the price override
                feature_id: nil,
                # Override price amount
                price: nil,
                # Pricing tiers configuration
                tiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    addon_id: T.nilable(String),
                    base_charge: T::Boolean,
                    block_size: Float,
                    feature_id: T.nilable(String),
                    price:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price,
                    tiers:
                      T::Array[
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Price < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(T.nilable(Float)) }
                attr_reader :amount

                sig { params(amount: Float).void }
                attr_writer :amount

                # The billing country code of the price
                sig { returns(T.nilable(String)) }
                attr_accessor :billing_country_code

                # The price currency
                sig do
                  returns(
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  )
                end
                attr_reader :currency

                sig do
                  params(
                    currency:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::OrSymbol
                  ).void
                end
                attr_writer :currency

                # Override price amount
                sig do
                  params(
                    amount: Float,
                    billing_country_code: T.nilable(String),
                    currency:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount: nil,
                  # The billing country code of the price
                  billing_country_code: nil,
                  # The price currency
                  currency: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      billing_country_code: T.nilable(String),
                      currency:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # The price currency
                module Currency
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Tier < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The flat fee price of the price tier
                sig do
                  returns(
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice
                    )
                  )
                end
                attr_reader :flat_price

                sig do
                  params(
                    flat_price:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::OrHash
                  ).void
                end
                attr_writer :flat_price

                # The unit price of the price tier
                sig do
                  returns(
                    T.nilable(
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice
                    )
                  )
                end
                attr_reader :unit_price

                sig do
                  params(
                    unit_price:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::OrHash
                  ).void
                end
                attr_writer :unit_price

                # The up to quantity of the price tier
                sig { returns(T.nilable(Float)) }
                attr_reader :up_to

                sig { params(up_to: Float).void }
                attr_writer :up_to

                sig do
                  params(
                    flat_price:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::OrHash,
                    unit_price:
                      Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::OrHash,
                    up_to: Float
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The flat fee price of the price tier
                  flat_price: nil,
                  # The unit price of the price tier
                  unit_price: nil,
                  # The up to quantity of the price tier
                  up_to: nil
                )
                end

                sig do
                  override.returns(
                    {
                      flat_price:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice,
                      unit_price:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice,
                      up_to: Float
                    }
                  )
                end
                def to_hash
                end

                class FlatPrice < Stigg::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # The price amount
                  sig { returns(T.nilable(Float)) }
                  attr_reader :amount

                  sig { params(amount: Float).void }
                  attr_writer :amount

                  # The billing country code of the price
                  sig { returns(T.nilable(String)) }
                  attr_accessor :billing_country_code

                  # The price currency
                  sig do
                    returns(
                      T.nilable(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :currency

                  sig do
                    params(
                      currency:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::OrSymbol
                    ).void
                  end
                  attr_writer :currency

                  # The flat fee price of the price tier
                  sig do
                    params(
                      amount: Float,
                      billing_country_code: T.nilable(String),
                      currency:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The price amount
                    amount: nil,
                    # The billing country code of the price
                    billing_country_code: nil,
                    # The price currency
                    currency: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        billing_country_code: T.nilable(String),
                        currency:
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # The price currency
                  module Currency
                    extend Stigg::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    USD =
                      T.let(
                        :usd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    AED =
                      T.let(
                        :aed,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ALL =
                      T.let(
                        :all,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    AMD =
                      T.let(
                        :amd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ANG =
                      T.let(
                        :ang,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    AUD =
                      T.let(
                        :aud,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    AWG =
                      T.let(
                        :awg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    AZN =
                      T.let(
                        :azn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BAM =
                      T.let(
                        :bam,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BBD =
                      T.let(
                        :bbd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BDT =
                      T.let(
                        :bdt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BGN =
                      T.let(
                        :bgn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BIF =
                      T.let(
                        :bif,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BMD =
                      T.let(
                        :bmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BND =
                      T.let(
                        :bnd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BSD =
                      T.let(
                        :bsd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BWP =
                      T.let(
                        :bwp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BYN =
                      T.let(
                        :byn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BZD =
                      T.let(
                        :bzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    BRL =
                      T.let(
                        :brl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CAD =
                      T.let(
                        :cad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CDF =
                      T.let(
                        :cdf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CHF =
                      T.let(
                        :chf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CNY =
                      T.let(
                        :cny,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CZK =
                      T.let(
                        :czk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    DKK =
                      T.let(
                        :dkk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    DOP =
                      T.let(
                        :dop,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    DZD =
                      T.let(
                        :dzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    EGP =
                      T.let(
                        :egp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ETB =
                      T.let(
                        :etb,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    EUR =
                      T.let(
                        :eur,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    FJD =
                      T.let(
                        :fjd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GBP =
                      T.let(
                        :gbp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GEL =
                      T.let(
                        :gel,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GIP =
                      T.let(
                        :gip,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GMD =
                      T.let(
                        :gmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GYD =
                      T.let(
                        :gyd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    HKD =
                      T.let(
                        :hkd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    HRK =
                      T.let(
                        :hrk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    HTG =
                      T.let(
                        :htg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    IDR =
                      T.let(
                        :idr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ILS =
                      T.let(
                        :ils,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    INR =
                      T.let(
                        :inr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ISK =
                      T.let(
                        :isk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    JMD =
                      T.let(
                        :jmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    JPY =
                      T.let(
                        :jpy,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KES =
                      T.let(
                        :kes,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KGS =
                      T.let(
                        :kgs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KHR =
                      T.let(
                        :khr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KMF =
                      T.let(
                        :kmf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KRW =
                      T.let(
                        :krw,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KYD =
                      T.let(
                        :kyd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    KZT =
                      T.let(
                        :kzt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    LBP =
                      T.let(
                        :lbp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    LKR =
                      T.let(
                        :lkr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    LRD =
                      T.let(
                        :lrd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    LSL =
                      T.let(
                        :lsl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MAD =
                      T.let(
                        :mad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MDL =
                      T.let(
                        :mdl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MGA =
                      T.let(
                        :mga,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MKD =
                      T.let(
                        :mkd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MMK =
                      T.let(
                        :mmk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MNT =
                      T.let(
                        :mnt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MOP =
                      T.let(
                        :mop,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MRO =
                      T.let(
                        :mro,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MVR =
                      T.let(
                        :mvr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MWK =
                      T.let(
                        :mwk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MXN =
                      T.let(
                        :mxn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MYR =
                      T.let(
                        :myr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    MZN =
                      T.let(
                        :mzn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    NAD =
                      T.let(
                        :nad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    NGN =
                      T.let(
                        :ngn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    NOK =
                      T.let(
                        :nok,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    NPR =
                      T.let(
                        :npr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    NZD =
                      T.let(
                        :nzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    PGK =
                      T.let(
                        :pgk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    PHP =
                      T.let(
                        :php,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    PKR =
                      T.let(
                        :pkr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    PLN =
                      T.let(
                        :pln,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    QAR =
                      T.let(
                        :qar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    RON =
                      T.let(
                        :ron,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    RSD =
                      T.let(
                        :rsd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    RUB =
                      T.let(
                        :rub,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    RWF =
                      T.let(
                        :rwf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SAR =
                      T.let(
                        :sar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SBD =
                      T.let(
                        :sbd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SCR =
                      T.let(
                        :scr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SEK =
                      T.let(
                        :sek,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SGD =
                      T.let(
                        :sgd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SLE =
                      T.let(
                        :sle,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SLL =
                      T.let(
                        :sll,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SOS =
                      T.let(
                        :sos,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    SZL =
                      T.let(
                        :szl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    THB =
                      T.let(
                        :thb,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    TJS =
                      T.let(
                        :tjs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    TOP =
                      T.let(
                        :top,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    TRY =
                      T.let(
                        :try,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    TTD =
                      T.let(
                        :ttd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    TZS =
                      T.let(
                        :tzs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    UAH =
                      T.let(
                        :uah,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    UZS =
                      T.let(
                        :uzs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    VND =
                      T.let(
                        :vnd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    VUV =
                      T.let(
                        :vuv,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    WST =
                      T.let(
                        :wst,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    XAF =
                      T.let(
                        :xaf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    XCD =
                      T.let(
                        :xcd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    YER =
                      T.let(
                        :yer,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ZAR =
                      T.let(
                        :zar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    ZMW =
                      T.let(
                        :zmw,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    CLP =
                      T.let(
                        :clp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    DJF =
                      T.let(
                        :djf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    GNF =
                      T.let(
                        :gnf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    UGX =
                      T.let(
                        :ugx,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    PYG =
                      T.let(
                        :pyg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    XOF =
                      T.let(
                        :xof,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )
                    XPF =
                      T.let(
                        :xpf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnitPrice < Stigg::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # The price amount
                  sig { returns(T.nilable(Float)) }
                  attr_reader :amount

                  sig { params(amount: Float).void }
                  attr_writer :amount

                  # The billing country code of the price
                  sig { returns(T.nilable(String)) }
                  attr_accessor :billing_country_code

                  # The price currency
                  sig do
                    returns(
                      T.nilable(
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :currency

                  sig do
                    params(
                      currency:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::OrSymbol
                    ).void
                  end
                  attr_writer :currency

                  # The unit price of the price tier
                  sig do
                    params(
                      amount: Float,
                      billing_country_code: T.nilable(String),
                      currency:
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The price amount
                    amount: nil,
                    # The billing country code of the price
                    billing_country_code: nil,
                    # The price currency
                    currency: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Float,
                        billing_country_code: T.nilable(String),
                        currency:
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # The price currency
                  module Currency
                    extend Stigg::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    USD =
                      T.let(
                        :usd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    AED =
                      T.let(
                        :aed,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ALL =
                      T.let(
                        :all,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    AMD =
                      T.let(
                        :amd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ANG =
                      T.let(
                        :ang,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    AUD =
                      T.let(
                        :aud,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    AWG =
                      T.let(
                        :awg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    AZN =
                      T.let(
                        :azn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BAM =
                      T.let(
                        :bam,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BBD =
                      T.let(
                        :bbd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BDT =
                      T.let(
                        :bdt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BGN =
                      T.let(
                        :bgn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BIF =
                      T.let(
                        :bif,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BMD =
                      T.let(
                        :bmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BND =
                      T.let(
                        :bnd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BSD =
                      T.let(
                        :bsd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BWP =
                      T.let(
                        :bwp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BYN =
                      T.let(
                        :byn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BZD =
                      T.let(
                        :bzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    BRL =
                      T.let(
                        :brl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CAD =
                      T.let(
                        :cad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CDF =
                      T.let(
                        :cdf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CHF =
                      T.let(
                        :chf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CNY =
                      T.let(
                        :cny,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CZK =
                      T.let(
                        :czk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    DKK =
                      T.let(
                        :dkk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    DOP =
                      T.let(
                        :dop,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    DZD =
                      T.let(
                        :dzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    EGP =
                      T.let(
                        :egp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ETB =
                      T.let(
                        :etb,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    EUR =
                      T.let(
                        :eur,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    FJD =
                      T.let(
                        :fjd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GBP =
                      T.let(
                        :gbp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GEL =
                      T.let(
                        :gel,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GIP =
                      T.let(
                        :gip,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GMD =
                      T.let(
                        :gmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GYD =
                      T.let(
                        :gyd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    HKD =
                      T.let(
                        :hkd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    HRK =
                      T.let(
                        :hrk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    HTG =
                      T.let(
                        :htg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    IDR =
                      T.let(
                        :idr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ILS =
                      T.let(
                        :ils,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    INR =
                      T.let(
                        :inr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ISK =
                      T.let(
                        :isk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    JMD =
                      T.let(
                        :jmd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    JPY =
                      T.let(
                        :jpy,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KES =
                      T.let(
                        :kes,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KGS =
                      T.let(
                        :kgs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KHR =
                      T.let(
                        :khr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KMF =
                      T.let(
                        :kmf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KRW =
                      T.let(
                        :krw,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KYD =
                      T.let(
                        :kyd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    KZT =
                      T.let(
                        :kzt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    LBP =
                      T.let(
                        :lbp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    LKR =
                      T.let(
                        :lkr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    LRD =
                      T.let(
                        :lrd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    LSL =
                      T.let(
                        :lsl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MAD =
                      T.let(
                        :mad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MDL =
                      T.let(
                        :mdl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MGA =
                      T.let(
                        :mga,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MKD =
                      T.let(
                        :mkd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MMK =
                      T.let(
                        :mmk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MNT =
                      T.let(
                        :mnt,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MOP =
                      T.let(
                        :mop,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MRO =
                      T.let(
                        :mro,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MVR =
                      T.let(
                        :mvr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MWK =
                      T.let(
                        :mwk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MXN =
                      T.let(
                        :mxn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MYR =
                      T.let(
                        :myr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    MZN =
                      T.let(
                        :mzn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    NAD =
                      T.let(
                        :nad,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    NGN =
                      T.let(
                        :ngn,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    NOK =
                      T.let(
                        :nok,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    NPR =
                      T.let(
                        :npr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    NZD =
                      T.let(
                        :nzd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    PGK =
                      T.let(
                        :pgk,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    PHP =
                      T.let(
                        :php,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    PKR =
                      T.let(
                        :pkr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    PLN =
                      T.let(
                        :pln,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    QAR =
                      T.let(
                        :qar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    RON =
                      T.let(
                        :ron,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    RSD =
                      T.let(
                        :rsd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    RUB =
                      T.let(
                        :rub,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    RWF =
                      T.let(
                        :rwf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SAR =
                      T.let(
                        :sar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SBD =
                      T.let(
                        :sbd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SCR =
                      T.let(
                        :scr,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SEK =
                      T.let(
                        :sek,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SGD =
                      T.let(
                        :sgd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SLE =
                      T.let(
                        :sle,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SLL =
                      T.let(
                        :sll,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SOS =
                      T.let(
                        :sos,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    SZL =
                      T.let(
                        :szl,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    THB =
                      T.let(
                        :thb,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    TJS =
                      T.let(
                        :tjs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    TOP =
                      T.let(
                        :top,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    TRY =
                      T.let(
                        :try,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    TTD =
                      T.let(
                        :ttd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    TZS =
                      T.let(
                        :tzs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    UAH =
                      T.let(
                        :uah,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    UZS =
                      T.let(
                        :uzs,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    VND =
                      T.let(
                        :vnd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    VUV =
                      T.let(
                        :vuv,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    WST =
                      T.let(
                        :wst,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    XAF =
                      T.let(
                        :xaf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    XCD =
                      T.let(
                        :xcd,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    YER =
                      T.let(
                        :yer,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ZAR =
                      T.let(
                        :zar,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    ZMW =
                      T.let(
                        :zmw,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    CLP =
                      T.let(
                        :clp,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    DJF =
                      T.let(
                        :djf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    GNF =
                      T.let(
                        :gnf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    UGX =
                      T.let(
                        :ugx,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    PYG =
                      T.let(
                        :pyg,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    XOF =
                      T.let(
                        :xof,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )
                    XPF =
                      T.let(
                        :xpf,
                        Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency::TaggedSymbol
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
    end
  end
end
