module CommonApp
  class RestApi
    attr_reader :method, :url, :params, :authorize

    def initialize(method, endpoint, params = {}, authorize = true)
      @method = method
      @url = CommonApp.configuration.rest_api + '/' + endpoint
      @params = params
      @authorize = authorize
    end

    def call
      parse_response
    end

    private

    def parse_response
      return nil unless response.present?

      JSON.parse(response)
    end

    def response
      @response ||= send(method.downcase)
    end

    def get
      RestClient::Request.execute(method: :get, url: url, headers: headers, proxy: proxy)
    end

    def post
      RestClient::Request.execute(method: :post, url: url, payload: params, headers: headers, proxy: proxy)
    end

    def put
      RestClient::Request.execute(method: :put, url: url, payload: params, headers: headers, proxy: proxy)
    end

    def delete
      RestClient::Request.execute(method: :delete, url: url, headers: headers, proxy: proxy)
    end

    def headers
      authorize ? default_headers.merge(auth_headers) : default_headers
    end

    def default_headers
      { 'x-api-key': CommonApp.configuration.api_key, 'content-type': 'application/json' }
    end

    def auth_headers
      { 'authorization': CommonApp::Auth::RestToken.new.call }
    end

    def proxy
      CommonApp.configuration.proxy
    end
  end
end
