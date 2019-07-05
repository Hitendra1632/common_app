module Post
  module Counselor
    # for sending Mid year Report
    class MidYearReport
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
        :post_form_counselor_midyear_report
      end
    end
  end
end