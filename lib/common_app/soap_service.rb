module CommonApp
  class SoapService
    attr_reader :operation, :message, :authorize

    def initialize(operation, message = {}, authorize = true)
      @operation = operation
      @message = message.present? ? { request: message } : message
      @authorize = authorize
    end

    def call
      operation_result
    end

    private

    def operation_result
      operation_response[operation_result_key] if operation_response
    end

    def operation_result_key
      (operation.to_s + '_result').to_sym
    end

    def operation_response
      response.body[operation_response_key]
    end

    def operation_response_key
      (operation.to_s + '_response').to_sym
    end

    def response
      @response ||= client.call(operation, message: message, headers: headers)
    end

    def client
      Savon.client(options)
    end

    def options
      {
        wsdl: CommonApp.configuration.soap_service,
        proxy: CommonApp.configuration.proxy,
        convert_request_keys_to: :none,
        unwrap: true
      }
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
