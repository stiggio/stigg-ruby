# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::EntityTypesTest < Stigg::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.entity_types.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::EntityTypeListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        attribution_keys: ^(Stigg::Internal::Type::ArrayOf[String]),
        created_at: Time,
        description: String | nil,
        display_name: String,
        updated_at: Time
      }
    end
  end

  def test_archive_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.entity_types.archive(ids: ["team"])

    assert_pattern do
      response => Stigg::Models::V1::EntityTypeArchiveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::EntityTypeArchiveResponse::Data
      }
    end
  end

  def test_check_active_entities
    skip("Mock server tests are disabled")

    response = @stigg.v1.entity_types.check_active_entities("id")

    assert_pattern do
      response => Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.entity_types.upsert(
        types: [
          {id: "org", attributionKeys: ["organizationId"], displayName: "Organization"},
          {id: "team", attributionKeys: ["teamId"], displayName: "Team"}
        ]
      )

    assert_pattern do
      response => Stigg::Models::V1::EntityTypeUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::EntityTypeUpsertResponse::Data])
      }
    end
  end
end
