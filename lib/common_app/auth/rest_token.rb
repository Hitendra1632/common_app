module CommonApp
  module Auth
    class RestToken < Base
      def token
        response['token']
      end

      def response
        RestApi.new(method, endpoint, body, false).call
      end

      def method
        'post'
      end

      def endpoint
        'auth/token'
      end
    end
  end
end
