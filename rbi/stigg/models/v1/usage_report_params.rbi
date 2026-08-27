# typed: strong

module Stigg
  module Models
    module V1
      class UsageReportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::UsageReportParams, Stigg::Internal::AnyHash)
          end

        # A list of usage reports to be submitted in bulk
        sig { returns(T::Array[Stigg::V1::UsageReportParams::Usage]) }
        attr_accessor :usages

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
            usages: T::Array[Stigg::V1::UsageReportParams::Usage::OrHash],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of usage reports to be submitted in bulk
          usages:,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              usages: T::Array[Stigg::V1::UsageReportParams::Usage],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Usage < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::UsageReportParams::Usage,
                Stigg::Internal::AnyHash
              )
            end

          # Customer id
          sig { returns(String) }
          attr_accessor :customer_id

          # Feature id
          sig { returns(String) }
          attr_accessor :feature_id

          # The value to report for usage. Must be a whole number — the REST API does not
          # accept fractional (float) usage values; scale up (e.g. report cents instead of
          # dollars, or milliseconds instead of seconds) if you need sub-unit precision.
          sig { returns(Integer) }
          attr_accessor :value

          # Timestamp of when the record was created
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Additional dimensions for the usage report
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Stigg::V1::UsageReportParams::Usage::Dimension::Variants
                ]
              )
            )
          end
          attr_reader :dimensions

          sig do
            params(
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::UsageReportParams::Usage::Dimension::Variants
                ]
            ).void
          end
          attr_writer :dimensions

          # A key you provide to safely retry the same usage report without double-counting
          # it. Reports with a previously-seen idempotency key are deduplicated for 7 days;
          # after that window a retry is treated as new usage.
          sig { returns(T.nilable(String)) }
          attr_reader :idempotency_key

          sig { params(idempotency_key: String).void }
          attr_writer :idempotency_key

          # The customer resource this usage applies to. Optional — only required if the
          # customer has multiple resources (for example, one subscription per workspace or
          # site) and usage needs to be tracked separately per resource; omit it to report
          # usage at the customer level.
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # How the reported value is applied: DELTA (default) adds it to the feature's
          # current usage; SET treats it as the new absolute usage total, and Stigg computes
          # the delta internally.
          sig do
            returns(
              T.nilable(
                Stigg::V1::UsageReportParams::Usage::UpdateBehavior::OrSymbol
              )
            )
          end
          attr_reader :update_behavior

          sig do
            params(
              update_behavior:
                Stigg::V1::UsageReportParams::Usage::UpdateBehavior::OrSymbol
            ).void
          end
          attr_writer :update_behavior

          # Single usage measurement
          sig do
            params(
              customer_id: String,
              feature_id: String,
              value: Integer,
              created_at: Time,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::UsageReportParams::Usage::Dimension::Variants
                ],
              idempotency_key: String,
              resource_id: T.nilable(String),
              update_behavior:
                Stigg::V1::UsageReportParams::Usage::UpdateBehavior::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Customer id
            customer_id:,
            # Feature id
            feature_id:,
            # The value to report for usage. Must be a whole number — the REST API does not
            # accept fractional (float) usage values; scale up (e.g. report cents instead of
            # dollars, or milliseconds instead of seconds) if you need sub-unit precision.
            value:,
            # Timestamp of when the record was created
            created_at: nil,
            # Additional dimensions for the usage report
            dimensions: nil,
            # A key you provide to safely retry the same usage report without double-counting
            # it. Reports with a previously-seen idempotency key are deduplicated for 7 days;
            # after that window a retry is treated as new usage.
            idempotency_key: nil,
            # The customer resource this usage applies to. Optional — only required if the
            # customer has multiple resources (for example, one subscription per workspace or
            # site) and usage needs to be tracked separately per resource; omit it to report
            # usage at the customer level.
            resource_id: nil,
            # How the reported value is applied: DELTA (default) adds it to the feature's
            # current usage; SET treats it as the new absolute usage total, and Stigg computes
            # the delta internally.
            update_behavior: nil
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                feature_id: String,
                value: Integer,
                created_at: Time,
                dimensions:
                  T::Hash[
                    Symbol,
                    Stigg::V1::UsageReportParams::Usage::Dimension::Variants
                  ],
                idempotency_key: String,
                resource_id: T.nilable(String),
                update_behavior:
                  Stigg::V1::UsageReportParams::Usage::UpdateBehavior::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Dimension
            extend Stigg::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Float, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::UsageReportParams::Usage::Dimension::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # How the reported value is applied: DELTA (default) adds it to the feature's
          # current usage; SET treats it as the new absolute usage total, and Stigg computes
          # the delta internally.
          module UpdateBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::UsageReportParams::Usage::UpdateBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DELTA =
              T.let(
                :DELTA,
                Stigg::V1::UsageReportParams::Usage::UpdateBehavior::TaggedSymbol
              )
            SET =
              T.let(
                :SET,
                Stigg::V1::UsageReportParams::Usage::UpdateBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::UsageReportParams::Usage::UpdateBehavior::TaggedSymbol
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
