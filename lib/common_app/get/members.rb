module CommonApp
  module Get
    class Members
      def call
        members
      end

      private

      def members
        response[:get_members_response][:get_members_result]
      end

      def response
        SoapService.new(operation).call
      end

      def operation
        :get_members
      end
    end
  end
end
