# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Customers::IntegrationsTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.customers.integrations.retrieve("integrationId", id: "id")

    assert_pattern do
      response => Stigg::V1::CustomerIntegrationResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerIntegrationResponse::Data
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.customers.integrations.update("integrationId", id: "id", synced_entity_id: "syncedEntityId")

    assert_pattern do
      response => Stigg::V1::CustomerIntegrationResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerIntegrationResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.customers.integrations.list("x")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Customers::IntegrationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        synced_entity_id: String | nil,
        vendor_identifier: Stigg::Models::V1::Customers::IntegrationListResponse::VendorIdentifier,
        sync_data: Stigg::Models::V1::Customers::IntegrationListResponse::SyncData | nil
      }
    end
  end

  def test_link_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.customers.integrations.link(
        "x",
        body_id: "id",
        synced_entity_id: "syncedEntityId",
        vendor_identifier: :AUTH0
      )

    assert_pattern do
      response => Stigg::V1::CustomerIntegrationResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerIntegrationResponse::Data
      }
    end
  end

  def test_unlink_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.customers.integrations.unlink("integrationId", id: "id")

    assert_pattern do
      response => Stigg::V1::CustomerIntegrationResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerIntegrationResponse::Data
      }
    end
  end
end
