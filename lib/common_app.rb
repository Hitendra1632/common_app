require 'rest-client'
require 'savon'
require 'require_all'

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
