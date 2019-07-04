require 'rest-client'
require 'savon'
require 'require_all'

require "common_app/configuration"
require "common_app/rest_api"
require "common_app/soap_service"
require "common_app/version"
require "common_app/auth/base"
require "common_app/auth/rest_token"
require "common_app/auth/soap_token"
require "common_app/get/applicant"
require "common_app/get/members"
require "common_app/post/counselor/secondary_report"

module CommonApp
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration = Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
