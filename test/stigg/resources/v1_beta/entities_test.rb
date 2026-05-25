# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1Beta::EntitiesTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.entities.retrieve("x", id: "id")

    assert_pattern do
      response => Stigg::Models::V1Beta::EntityRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::EntityRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.entities.list("id")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1Beta::EntityListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        created_at: Time,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        type_id: String,
        updated_at: Time
      }
    end
  end

  def test_archive_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.entities.archive("id", ids: %w[user-7f3a0c1d user-c4d1b2e9])

    assert_pattern do
      response => Stigg::Models::V1Beta::EntityArchiveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::EntityArchiveResponse::Data
      }
    end
  end

  def test_unarchive_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.entities.unarchive("id", ids: %w[user-7f3a0c1d user-c4d1b2e9])

    assert_pattern do
      response => Stigg::Models::V1Beta::EntityUnarchiveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::EntityUnarchiveResponse::Data
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.entities.upsert("id", entities: [{id: "user-7f3a0c1d"}, {id: "user-c4d1b2e9"}])

    assert_pattern do
      response => Stigg::Models::V1Beta::EntityUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::EntityUpsertResponse::Data])
      }
    end
  end
end
