# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Events::FeaturesTest < Stigg::Test::ResourceTest
  def test_archive_feature
    skip("Prism tests are disabled")

    response = @stigg.v1.events.features.archive_feature("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::FeatureArchiveFeatureResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::FeatureArchiveFeatureResponse::Data
      }
    end
  end

  def test_create_feature_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.events.features.create_feature(id: "id", display_name: "displayName", feature_type: :BOOLEAN)

    assert_pattern do
      response => Stigg::Models::V1::Events::FeatureCreateFeatureResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::FeatureCreateFeatureResponse::Data
      }
    end
  end

  def test_list_features
    skip("Prism tests are disabled")

    response = @stigg.v1.events.features.list_features

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::FeatureListFeaturesResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        display_name: String,
        enum_configuration: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::FeatureListFeaturesResponse::EnumConfiguration]) | nil,
        feature_status: Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureStatus,
        feature_type: Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureType,
        feature_units: String | nil,
        feature_units_plural: String | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        meter_type: Stigg::Models::V1::Events::FeatureListFeaturesResponse::MeterType,
        unit_transformation: Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation | nil,
        updated_at: Time
      }
    end
  end

  def test_retrieve_feature
    skip("Prism tests are disabled")

    response = @stigg.v1.events.features.retrieve_feature("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::FeatureRetrieveFeatureResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::FeatureRetrieveFeatureResponse::Data
      }
    end
  end

  def test_unarchive_feature
    skip("Prism tests are disabled")

    response = @stigg.v1.events.features.unarchive_feature("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::FeatureUnarchiveFeatureResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::FeatureUnarchiveFeatureResponse::Data
      }
    end
  end

  def test_update_feature
    skip("Prism tests are disabled")

    response = @stigg.v1.events.features.update_feature("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::FeatureUpdateFeatureResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::FeatureUpdateFeatureResponse::Data
      }
    end
  end
end
