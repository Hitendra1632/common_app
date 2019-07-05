module CommonApp
  module Get
    module Counselor
      class OptionalReportStatus < Base
        attr_reader :applicant_id, :member_id, :recommender_id

        private

        def operation
          :get_form_counselor_optional_report_status
        end
      end
    end
  end
end
