module CommonApp
  module Auth
    class SoapToken < Base
      def token
        response[:token]
      end

      def response
        SoapService.new(operation, body, false).call
      end

      def operation
        :auth
      end
    end
  end
end
