# typed: strong

module Stigg
  module Models
    module Internal
      module Beta
        class EventQueueDeleteResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::Internal::Beta::EventQueueDeleteResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Event queue provisioning status and details
          sig do
            returns(
              Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Event queue provisioning status and details
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # Unique queue identifier
            sig { returns(String) }
            attr_accessor :queue_name

            # AWS region where the queue is deployed
            sig do
              returns(
                Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
              )
            end
            attr_accessor :region

            # Current provisioning status
            sig do
              returns(
                Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # SQS queue URL
            sig { returns(T.nilable(String)) }
            attr_accessor :queue_url

            # IAM role ARN for queue access
            sig { returns(T.nilable(String)) }
            attr_accessor :role_arn

            # Queue suffix for disambiguation
            sig { returns(T.nilable(String)) }
            attr_accessor :suffix

            # Event queue provisioning status and details
            sig do
              params(
                created_at: Time,
                queue_name: String,
                region:
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::OrSymbol,
                status:
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::OrSymbol,
                updated_at: Time,
                queue_url: T.nilable(String),
                role_arn: T.nilable(String),
                suffix: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Timestamp of when the record was created
              created_at:,
              # Unique queue identifier
              queue_name:,
              # AWS region where the queue is deployed
              region:,
              # Current provisioning status
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # SQS queue URL
              queue_url: nil,
              # IAM role ARN for queue access
              role_arn: nil,
              # Queue suffix for disambiguation
              suffix: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  queue_name: String,
                  region:
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol,
                  status:
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  queue_url: T.nilable(String),
                  role_arn: T.nilable(String),
                  suffix: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # AWS region where the queue is deployed
            module Region
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              US_EAST_1 =
                T.let(
                  :"us-east-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              US_EAST_2 =
                T.let(
                  :"us-east-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              US_WEST_1 =
                T.let(
                  :"us-west-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              US_WEST_2 =
                T.let(
                  :"us-west-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              CA_CENTRAL_1 =
                T.let(
                  :"ca-central-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_WEST_1 =
                T.let(
                  :"eu-west-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_WEST_2 =
                T.let(
                  :"eu-west-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_WEST_3 =
                T.let(
                  :"eu-west-3",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_CENTRAL_1 =
                T.let(
                  :"eu-central-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_CENTRAL_2 =
                T.let(
                  :"eu-central-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_NORTH_1 =
                T.let(
                  :"eu-north-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_SOUTH_1 =
                T.let(
                  :"eu-south-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              EU_SOUTH_2 =
                T.let(
                  :"eu-south-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_SOUTHEAST_1 =
                T.let(
                  :"ap-southeast-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_SOUTHEAST_2 =
                T.let(
                  :"ap-southeast-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_SOUTHEAST_3 =
                T.let(
                  :"ap-southeast-3",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_NORTHEAST_1 =
                T.let(
                  :"ap-northeast-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_NORTHEAST_2 =
                T.let(
                  :"ap-northeast-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_NORTHEAST_3 =
                T.let(
                  :"ap-northeast-3",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_SOUTH_1 =
                T.let(
                  :"ap-south-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_SOUTH_2 =
                T.let(
                  :"ap-south-2",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AP_EAST_1 =
                T.let(
                  :"ap-east-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              SA_EAST_1 =
                T.let(
                  :"sa-east-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              AF_SOUTH_1 =
                T.let(
                  :"af-south-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              ME_SOUTH_1 =
                T.let(
                  :"me-south-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              ME_CENTRAL_1 =
                T.let(
                  :"me-central-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )
              IL_CENTRAL_1 =
                T.let(
                  :"il-central-1",
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Region::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Current provisioning status
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROVISIONING =
                T.let(
                  :PROVISIONING,
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
                )
              ACTIVE =
                T.let(
                  :ACTIVE,
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :FAILED,
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
                )
              DEPROVISIONING =
                T.let(
                  :DEPROVISIONING,
                  Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data::Status::TaggedSymbol
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
