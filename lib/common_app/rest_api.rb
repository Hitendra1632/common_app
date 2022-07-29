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
    rescue RestClient::ExceptionWithResponse => e
      if e.http_code == 500
        raise CommonApp::ServerError
      else
        { error_code: e.http_code, response: get_exception(e) }
      end
    end

    private

    def get_exception(e)
      if e.try(:response).present?
       JSON.parse(e.response)
      elsif e.present?
        e['Message'] || {}
      else
        {}
      end
    end

    def parse_response
      JSON.parse(response) if response.present?
    end

    def response
      @response ||= send(method.downcase)
    end

    def get
      RestClient::Request.execute(method: :get, url: url, headers: headers)
    end

    def post
      RestClient::Request.execute(method: :post, url: url, payload: payload, headers: headers)
    end

    def put
      RestClient::Request.execute(method: :put, url: url, payload: payload, headers: headers)
    end

    def delete
      RestClient::Request.execute(method: :delete, url: url, payload: payload, headers: headers)
    end

    def payload
      params.present? ? params.to_json : nil
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
