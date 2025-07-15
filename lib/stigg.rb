# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "stigg/version"
require_relative "stigg/internal/util"
require_relative "stigg/internal/type/converter"
require_relative "stigg/internal/type/unknown"
require_relative "stigg/internal/type/boolean"
require_relative "stigg/internal/type/file_input"
require_relative "stigg/internal/type/enum"
require_relative "stigg/internal/type/union"
require_relative "stigg/internal/type/array_of"
require_relative "stigg/internal/type/hash_of"
require_relative "stigg/internal/type/base_model"
require_relative "stigg/internal/type/base_page"
require_relative "stigg/internal/type/request_parameters"
require_relative "stigg/internal"
require_relative "stigg/request_options"
require_relative "stigg/file_part"
require_relative "stigg/errors"
require_relative "stigg/internal/transport/base_client"
require_relative "stigg/internal/transport/pooled_net_requester"
require_relative "stigg/client"
require_relative "stigg/models/v1/customer_get_customer_params"
require_relative "stigg/models/v1/customer_get_customer_response"
require_relative "stigg/models/v1/customers/sub_customer_get_sub_customer_params"
require_relative "stigg/models/v1/customers/sub_customer_get_sub_customer_response"
require_relative "stigg/models/v1/permission_check_params"
require_relative "stigg/models/v1/permission_check_response"
require_relative "stigg/models/v2/customer_get_customer_params"
require_relative "stigg/models/v2/customer_get_customer_response"
require_relative "stigg/models/v2/customers/sub_customer_get_sub_customer_params"
require_relative "stigg/models/v2/customers/sub_customer_get_sub_customer_response"
require_relative "stigg/models/v2/permission_check_params"
require_relative "stigg/models/v2/permission_check_response"
require_relative "stigg/models"
require_relative "stigg/resources/v1"
require_relative "stigg/resources/v1/customers"
require_relative "stigg/resources/v1/customers/sub_customer"
require_relative "stigg/resources/v1/permissions"
require_relative "stigg/resources/v2"
require_relative "stigg/resources/v2/customers"
require_relative "stigg/resources/v2/customers/sub_customer"
require_relative "stigg/resources/v2/permissions"
