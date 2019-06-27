module CommonApp
  class SoapService
    attr_reader :operation, :message, :authorize

    def initialize(operation, message = {}, authorize = true)
      @operation = operation
      @message = message.present? ? { request: message } : message
      @authorize = authorize
    end

    def call
      response.body
    end

    private

    def response
      client.call(operation, message: message, headers: headers)
    end

    def client
      Savon.client(options)
    end

    def options
      { wsdl: CommonApp.configuration.soap_service, proxy: CommonApp.configuration.proxy, convert_request_keys_to: :none }
    end

    def headers
      authorize ? default_headers.merge(auth_headers) : default_headers
    end

    def default_headers
      { 'x-api-key': CommonApp.configuration.api_key }
    end

    def auth_headers
      { 'authorization': CommonApp::Auth::SoapToken.new.call }
    end
  end
end
