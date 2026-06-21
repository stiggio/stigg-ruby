# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class DataExportListModelsResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::DataExportListModelsResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Grouped catalog of every data-export model a destination can opt into.
          sig do
            returns(
              Stigg::Models::V1::Events::DataExportListModelsResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportListModelsResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportListModelsResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Grouped catalog of every data-export model a destination can opt into.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Events::DataExportListModelsResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::DataExportListModelsResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Groups of data-export models, in display order
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group
                ]
              )
            end
            attr_accessor :groups

            # Grouped catalog of every data-export model a destination can opt into.
            sig do
              params(
                groups:
                  T::Array[
                    Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Groups of data-export models, in display order
              groups:
            )
            end

            sig do
              override.returns(
                {
                  groups:
                    T::Array[
                      Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group
                    ]
                }
              )
            end
            def to_hash
            end

            class Group < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group,
                    Stigg::Internal::AnyHash
                  )
                end

              # Stable group identifier
              sig { returns(String) }
              attr_accessor :id

              # Customer-facing group label
              sig { returns(String) }
              attr_accessor :display_name

              # Models in this group
              sig do
                returns(
                  T::Array[
                    Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model
                  ]
                )
              end
              attr_accessor :models

              # A group of related data-export models, mirroring the public docs taxonomy.
              sig do
                params(
                  id: String,
                  display_name: String,
                  models:
                    T::Array[
                      Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Stable group identifier
                id:,
                # Customer-facing group label
                display_name:,
                # Models in this group
                models:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    display_name: String,
                    models:
                      T::Array[
                        Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model
                      ]
                  }
                )
              end
              def to_hash
              end

              class Model < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Wire identifier — what gets persisted on the destination and registered with the
                # provider
                sig { returns(String) }
                attr_accessor :id

                # Customer-facing label for the model
                sig { returns(String) }
                attr_accessor :display_name

                # A single data-export model the customer can opt into.
                sig do
                  params(id: String, display_name: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Wire identifier — what gets persisted on the destination and registered with the
                  # provider
                  id:,
                  # Customer-facing label for the model
                  display_name:
                )
                end

                sig { override.returns({ id: String, display_name: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
