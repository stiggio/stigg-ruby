# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#list_models
        class DataExportListModelsResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Grouped catalog of every data-export model a destination can opt into.
          #
          #   @return [Stigg::Models::V1::Events::DataExportListModelsResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::DataExportListModelsResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::DataExportListModelsResponse::Data] Grouped catalog of every data-export model a destination can opt into.

          # @see Stigg::Models::V1::Events::DataExportListModelsResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute groups
            #   Groups of data-export models, in display order
            #
            #   @return [Array<Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group>]
            required :groups,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group] }

            # @!method initialize(groups:)
            #   Grouped catalog of every data-export model a destination can opt into.
            #
            #   @param groups [Array<Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group>] Groups of data-export models, in display order

            class Group < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   Stable group identifier
              #
              #   @return [String]
              required :id, String

              # @!attribute display_name
              #   Customer-facing group label
              #
              #   @return [String]
              required :display_name, String, api_name: :displayName

              # @!attribute models
              #   Models in this group
              #
              #   @return [Array<Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model>]
              required :models,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model] }

              # @!method initialize(id:, display_name:, models:)
              #   A group of related data-export models, mirroring the public docs taxonomy.
              #
              #   @param id [String] Stable group identifier
              #
              #   @param display_name [String] Customer-facing group label
              #
              #   @param models [Array<Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model>] Models in this group

              class Model < Stigg::Internal::Type::BaseModel
                # @!attribute id
                #   Wire identifier — what gets persisted on the destination and registered with the
                #   provider
                #
                #   @return [String]
                required :id, String

                # @!attribute display_name
                #   Customer-facing label for the model
                #
                #   @return [String]
                required :display_name, String, api_name: :displayName

                # @!method initialize(id:, display_name:)
                #   Some parameter documentations has been truncated, see
                #   {Stigg::Models::V1::Events::DataExportListModelsResponse::Data::Group::Model}
                #   for more details.
                #
                #   A single data-export model the customer can opt into.
                #
                #   @param id [String] Wire identifier — what gets persisted on the destination and registered with the
                #
                #   @param display_name [String] Customer-facing label for the model
              end
            end
          end
        end
      end
    end
  end
end
