module CommonApp
  class Configuration
    attr_accessor :rest_api, :soap_service, :api_key, :username, :password, :proxy, :cache

    def initialize
      @rest_api = nil
      @soap_service = nil
      @api_key = nil
      @username = nil
      @password = nil
      @proxy = nil
      @cache = nil
    end
  end
end
