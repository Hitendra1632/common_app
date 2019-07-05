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
        SoapService.new(operation, message).call
      end

      def operation
        :get_applicant
      end

      def message
        { Email: email }
      end
    end
  end
end
