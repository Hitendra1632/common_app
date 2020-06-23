module CommonApp
  module Create
    class Applicant
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        response
      end

      private

      def response
        RestApi.new(method, endpoint, params).call
      end

      def method
        'post'
      end

      def endpoint
        'applicant'
      end
    end
  end
end
