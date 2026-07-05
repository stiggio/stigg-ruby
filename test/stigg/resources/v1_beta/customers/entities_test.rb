# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1Beta::Customers::EntitiesTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.entities.retrieve("x", id: "id")

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::EntityRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.entities.list("id")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1Beta::Customers::EntityListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        created_at: Time,
        entity_type_id: String,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        updated_at: Time
      }
    end
  end

  def test_archive_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.entities.archive("id", ids: %w[user-7f3a0c1d user-c4d1b2e9])

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::EntityArchiveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::Customers::EntityArchiveResponse::Data
      }
    end
  end

  def test_unarchive_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.entities.unarchive("id", ids: %w[user-7f3a0c1d user-c4d1b2e9])

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::EntityUnarchiveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::Customers::EntityUnarchiveResponse::Data
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1_beta.customers.entities.upsert("id", entities: [{id: "user-7f3a0c1d"}, {id: "user-c4d1b2e9"}])

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::EntityUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::Customers::EntityUpsertResponse::Data])
      }
    end
  end
end
