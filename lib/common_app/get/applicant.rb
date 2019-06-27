module CommonApp
  module Get
    class Applicant
      attr_reader :email

      def initialize(email)
        @email = email
      end

      def call
        applicant
      end

      private

      def applicant
        response[:get_applicant_response][:get_applicant_result]
      end

      def response
        SoapService.new(operation, message).call
      end

      def operation
        :get_applicant
      end

      def message
        { email: email }
      end
    end
  end
end
