# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Events::DataExportTest < Stigg::Test::ResourceTest
  def test_mint_scoped_token_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.data_export.mint_scoped_token(application_origin: "x")

    assert_pattern do
      response => Stigg::Models::V1::Events::DataExportMintScopedTokenResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data
      }
    end
  end

  def test_trigger_sync
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.data_export.trigger_sync

    assert_pattern do
      response => Stigg::Models::V1::Events::DataExportTriggerSyncResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data
      }
    end
  end
end
