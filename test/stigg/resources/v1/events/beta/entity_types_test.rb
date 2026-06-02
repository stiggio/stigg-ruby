# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Beta::EntityTypesTest < Stigg::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.beta.entity_types.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::Beta::EntityTypeListResponse
    end

    assert_pattern do
      row => {
        id: String,
        attribution_keys: ^(Stigg::Internal::Type::ArrayOf[String]),
        created_at: Time,
        display_name: String,
        updated_at: Time
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.beta.entity_types.upsert(
        types: [
          {id: "org", attributionKeys: ["organizationId"], displayName: "Organization"},
          {id: "team", attributionKeys: ["teamId"], displayName: "Team"}
        ]
      )

    assert_pattern do
      response => Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse::Data])
      }
    end
  end
end
