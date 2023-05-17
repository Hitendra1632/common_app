module CommonApp
  module PreviewPdf
    class Base
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        preview_pdf
      end

      def method
        'get'
      end

      def preview_pdf
        RestApi.new(method, endpoint, params).call
      end

      def counselor_id
        params.dig('CounselorId')
      end

      def applicant_id
        params.dig('ApplicantId')
      end

      def member_id
        params.dig('MemberId')
      end

      def teacher_id
        params.dig('TeacherId')
      end
    end
  end
end
