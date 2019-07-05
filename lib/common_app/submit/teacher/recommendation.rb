module Submit
  module Teacher
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
        :submit_teacher_recommendation
      end
    end
  end
end