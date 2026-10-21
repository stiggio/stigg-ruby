# typed: strong

module Stigg
  module Models
    module V2
      class UsageReportResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V2::UsageReportResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Reported usage measurements and the credit balances they drew from
        sig { returns(Stigg::Models::V2::UsageReportResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V2::UsageReportResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response containing reported usage measurements with current usage values,
        # period information and reset dates, plus the balance of each credit wallet they
        # drew from.
        sig do
          params(
            data: Stigg::Models::V2::UsageReportResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Reported usage measurements and the credit balances they drew from
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V2::UsageReportResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V2::UsageReportResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Usage measurements, in request order, with current values and period info
          sig do
            returns(
              T::Array[Stigg::Models::V2::UsageReportResponse::Data::Usage]
            )
          end
          attr_accessor :usages

          # The balance of each credit wallet the request drew from. Omitted when no
          # reported feature consumes credits, or when credit balances aren't computed
          # synchronously for the environment; each usage's `credit` is then `null`.
          sig do
            returns(
              T.nilable(
                T::Array[Stigg::Models::V2::UsageReportResponse::Data::Credit]
              )
            )
          end
          attr_reader :credits

          sig do
            params(
              credits:
                T::Array[
                  Stigg::Models::V2::UsageReportResponse::Data::Credit::OrHash
                ]
            ).void
          end
          attr_writer :credits

          # The current usage of each governance entitlement this request counted towards.
          # Absent when governance is not enabled or the usage is unknown. Entitlements
          # whose usage could not be read, and those of repeated idempotent requests, are
          # left out
          sig do
            returns(
              T.nilable(
                T::Array[Stigg::Models::V2::UsageReportResponse::Data::Entity]
              )
            )
          end
          attr_reader :entities

          sig do
            params(
              entities:
                T::Array[
                  Stigg::Models::V2::UsageReportResponse::Data::Entity::OrHash
                ]
            ).void
          end
          attr_writer :entities

          # Reported usage measurements and the credit balances they drew from
          sig do
            params(
              usages:
                T::Array[
                  Stigg::Models::V2::UsageReportResponse::Data::Usage::OrHash
                ],
              credits:
                T::Array[
                  Stigg::Models::V2::UsageReportResponse::Data::Credit::OrHash
                ],
              entities:
                T::Array[
                  Stigg::Models::V2::UsageReportResponse::Data::Entity::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Usage measurements, in request order, with current values and period info
            usages:,
            # The balance of each credit wallet the request drew from. Omitted when no
            # reported feature consumes credits, or when credit balances aren't computed
            # synchronously for the environment; each usage's `credit` is then `null`.
            credits: nil,
            # The current usage of each governance entitlement this request counted towards.
            # Absent when governance is not enabled or the usage is unknown. Entitlements
            # whose usage could not be read, and those of repeated idempotent requests, are
            # left out
            entities: nil
          )
          end

          sig do
            override.returns(
              {
                usages:
                  T::Array[Stigg::Models::V2::UsageReportResponse::Data::Usage],
                credits:
                  T::Array[
                    Stigg::Models::V2::UsageReportResponse::Data::Credit
                  ],
                entities:
                  T::Array[Stigg::Models::V2::UsageReportResponse::Data::Entity]
              }
            )
          end
          def to_hash
          end

          class Usage < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V2::UsageReportResponse::Data::Usage,
                  Stigg::Internal::AnyHash
                )
              end

            # Unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # Customer id
            sig { returns(String) }
            attr_accessor :customer_id

            # Feature id
            sig { returns(String) }
            attr_accessor :feature_id

            # Timestamp
            sig { returns(Time) }
            attr_accessor :timestamp

            # The usage measurement record
            sig { returns(Float) }
            attr_accessor :value

            # The credits this measurement deducted. `null` when the measurement drew from no
            # wallet listed in `credits`. The balance of the wallet it drew from is in the
            # response `credits` list, matched by customer, resource and currency.
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit
                )
              )
            end
            attr_reader :credit

            sig do
              params(
                credit:
                  T.nilable(
                    Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit::OrHash
                  )
              ).void
            end
            attr_writer :credit

            # The current measured usage value
            sig { returns(T.nilable(Float)) }
            attr_accessor :current_usage

            # The date when the next usage reset will occur
            sig { returns(T.nilable(Time)) }
            attr_accessor :next_reset_date

            # The customer resource this usage applies to. Optional — only required if the
            # customer has multiple resources (for example, one subscription per workspace or
            # site) and usage needs to be tracked separately per resource; omit it to report
            # usage at the customer level.
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # The end date of the usage period in which this measurement resides (for
            # entitlements with a reset period)
            sig { returns(T.nilable(Time)) }
            attr_accessor :usage_period_end

            # The start date of the usage period in which this measurement resides (for
            # entitlements with a reset period)
            sig { returns(T.nilable(Time)) }
            attr_accessor :usage_period_start

            # Recorded usage with period info and the credits it deducted
            sig do
              params(
                id: String,
                created_at: Time,
                customer_id: String,
                feature_id: String,
                timestamp: Time,
                value: Float,
                credit:
                  T.nilable(
                    Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit::OrHash
                  ),
                current_usage: T.nilable(Float),
                next_reset_date: T.nilable(Time),
                resource_id: T.nilable(String),
                usage_period_end: T.nilable(Time),
                usage_period_start: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the entity
              id:,
              # Timestamp of when the record was created
              created_at:,
              # Customer id
              customer_id:,
              # Feature id
              feature_id:,
              # Timestamp
              timestamp:,
              # The usage measurement record
              value:,
              # The credits this measurement deducted. `null` when the measurement drew from no
              # wallet listed in `credits`. The balance of the wallet it drew from is in the
              # response `credits` list, matched by customer, resource and currency.
              credit: nil,
              # The current measured usage value
              current_usage: nil,
              # The date when the next usage reset will occur
              next_reset_date: nil,
              # The customer resource this usage applies to. Optional — only required if the
              # customer has multiple resources (for example, one subscription per workspace or
              # site) and usage needs to be tracked separately per resource; omit it to report
              # usage at the customer level.
              resource_id: nil,
              # The end date of the usage period in which this measurement resides (for
              # entitlements with a reset period)
              usage_period_end: nil,
              # The start date of the usage period in which this measurement resides (for
              # entitlements with a reset period)
              usage_period_start: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  customer_id: String,
                  feature_id: String,
                  timestamp: Time,
                  value: Float,
                  credit:
                    T.nilable(
                      Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit
                    ),
                  current_usage: T.nilable(Float),
                  next_reset_date: T.nilable(Time),
                  resource_id: T.nilable(String),
                  usage_period_end: T.nilable(Time),
                  usage_period_start: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V2::UsageReportResponse::Data::Usage::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              # The credits this single reportUsage call deducted, in credit units — scoped to
              # this one measurement (0 for idempotency duplicates). Contrast `currentUsage`,
              # which is the wallet-wide running total shared across all features on this
              # currency. Use it to reconcile expected per-call deductions.
              sig { returns(Float) }
              attr_accessor :consumed

              # The credit currency identifier
              sig { returns(String) }
              attr_accessor :currency_id

              # The credits this measurement deducted. `null` when the measurement drew from no
              # wallet listed in `credits`. The balance of the wallet it drew from is in the
              # response `credits` list, matched by customer, resource and currency.
              sig do
                params(consumed: Float, currency_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The credits this single reportUsage call deducted, in credit units — scoped to
                # this one measurement (0 for idempotency duplicates). Contrast `currentUsage`,
                # which is the wallet-wide running total shared across all features on this
                # currency. Use it to reconcile expected per-call deductions.
                consumed:,
                # The credit currency identifier
                currency_id:
              )
              end

              sig { override.returns({ consumed: Float, currency_id: String }) }
              def to_hash
              end
            end
          end

          class Credit < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V2::UsageReportResponse::Data::Credit,
                  Stigg::Internal::AnyHash
                )
              end

            # The credit currency identifier
            sig { returns(String) }
            attr_accessor :currency_id

            # The wallet's total consumed credits for this currency (optimistic — includes
            # not-yet-reconciled usage), shared across every feature that draws on the
            # currency. This is the running balance, not this call's deduction — see
            # `consumed` for that.
            sig { returns(Float) }
            attr_accessor :current_usage

            # Customer id
            sig { returns(String) }
            attr_accessor :customer_id

            # The wallet's resource; `null` for the customer-level wallet
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # The grant-version timestamp of this balance, used by the SDK for last-write-wins
            # reconciliation
            sig { returns(Time) }
            attr_accessor :timestamp

            # The total credits granted
            sig { returns(Float) }
            attr_accessor :usage_limit

            # End of the current credit grant period (when recurring credits reset), if
            # applicable
            sig { returns(T.nilable(Time)) }
            attr_accessor :usage_period_end

            # Optimistic credit balance of one wallet (customer, resource and currency) after
            # the request, listed once however many measurements drew from it
            sig do
              params(
                currency_id: String,
                current_usage: Float,
                customer_id: String,
                resource_id: T.nilable(String),
                timestamp: Time,
                usage_limit: Float,
                usage_period_end: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit currency identifier
              currency_id:,
              # The wallet's total consumed credits for this currency (optimistic — includes
              # not-yet-reconciled usage), shared across every feature that draws on the
              # currency. This is the running balance, not this call's deduction — see
              # `consumed` for that.
              current_usage:,
              # Customer id
              customer_id:,
              # The wallet's resource; `null` for the customer-level wallet
              resource_id:,
              # The grant-version timestamp of this balance, used by the SDK for last-write-wins
              # reconciliation
              timestamp:,
              # The total credits granted
              usage_limit:,
              # End of the current credit grant period (when recurring credits reset), if
              # applicable
              usage_period_end: nil
            )
            end

            sig do
              override.returns(
                {
                  currency_id: String,
                  current_usage: Float,
                  customer_id: String,
                  resource_id: T.nilable(String),
                  timestamp: Time,
                  usage_limit: Float,
                  usage_period_end: T.nilable(Time)
                }
              )
            end
            def to_hash
            end
          end

          class Entity < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V2::UsageReportResponse::Data::Entity,
                  Stigg::Internal::AnyHash
                )
              end

            # The absolute usage counted against the entitlement
            sig { returns(Float) }
            attr_accessor :current_usage

            # The customer whose usage counted towards the entitlement
            sig { returns(String) }
            attr_accessor :customer_id

            # The governance entitlement the usage counts towards
            sig { returns(String) }
            attr_accessor :entitlement_id

            # The governance entity the entitlement belongs to
            sig { returns(String) }
            attr_accessor :entity_id

            # The customer resource the usage counted from; `null` for customer-level usage
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # The entities the entitlement is scoped to (empty when it is not scoped)
            sig { returns(T::Array[String]) }
            attr_accessor :scope_entity_ids

            # When the entitlement usage was last updated
            sig { returns(Time) }
            attr_accessor :usage_updated_at

            # The credit currency the entitlement governs (exactly one of featureId and
            # currencyId is set)
            sig { returns(T.nilable(String)) }
            attr_reader :currency_id

            sig { params(currency_id: String).void }
            attr_writer :currency_id

            # The feature the entitlement governs (exactly one of featureId and currencyId is
            # set)
            sig { returns(T.nilable(String)) }
            attr_reader :feature_id

            sig { params(feature_id: String).void }
            attr_writer :feature_id

            # The usage counted against one governance entitlement
            sig do
              params(
                current_usage: Float,
                customer_id: String,
                entitlement_id: String,
                entity_id: String,
                resource_id: T.nilable(String),
                scope_entity_ids: T::Array[String],
                usage_updated_at: Time,
                currency_id: String,
                feature_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The absolute usage counted against the entitlement
              current_usage:,
              # The customer whose usage counted towards the entitlement
              customer_id:,
              # The governance entitlement the usage counts towards
              entitlement_id:,
              # The governance entity the entitlement belongs to
              entity_id:,
              # The customer resource the usage counted from; `null` for customer-level usage
              resource_id:,
              # The entities the entitlement is scoped to (empty when it is not scoped)
              scope_entity_ids:,
              # When the entitlement usage was last updated
              usage_updated_at:,
              # The credit currency the entitlement governs (exactly one of featureId and
              # currencyId is set)
              currency_id: nil,
              # The feature the entitlement governs (exactly one of featureId and currencyId is
              # set)
              feature_id: nil
            )
            end

            sig do
              override.returns(
                {
                  current_usage: Float,
                  customer_id: String,
                  entitlement_id: String,
                  entity_id: String,
                  resource_id: T.nilable(String),
                  scope_entity_ids: T::Array[String],
                  usage_updated_at: Time,
                  currency_id: String,
                  feature_id: String
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
end
