module CommonApp
  module Get
    module Applicant
      class ApplicationStatus
        attr_reader :applicant_id, :member_id

        def initialize(applicant_id, member_id)
          @applicant_id =  applicant_id
          @member_id = member_id
        end

        def call
          application_status
        end

        private

        def application_status
          SoapService.new(operation, message).call
        end

        def operation
          :get_form_applicant_application_status
        end

        def message
          {
              ApplicantId: applicant_id,
              MemberId: member_id
          }
        end
      end
    end
  end
end
