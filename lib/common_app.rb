require 'rest-client'
require 'savon'
require 'require_all'

require "common_app/configuration"
require "common_app/rest_api"
require "common_app/soap_service"
require "common_app/version"
require_rel 'common_app'

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
