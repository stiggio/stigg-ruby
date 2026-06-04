# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::DataExport::DestinationsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.data_export.destinations.create(destination_id: "x", destination_type: "x")

    assert_pattern do
      response => Stigg::Models::V1::Events::DataExport::DestinationCreateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::DataExport::DestinationCreateResponse::Data
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.data_export.destinations.delete("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data
      }
    end
  end
end
