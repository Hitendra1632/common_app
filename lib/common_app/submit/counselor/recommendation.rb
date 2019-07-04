module Submit
  module Counselor
    # for submit Recommendation
    class Recommendation
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        submitted_form
      end

      private

      def submitted_form
        SoapService.new(operation, params).call
      end

      def operation
        :submit_counselor_recommendation
      end
    end
  end
end