module CommonApp
  module Get
    module Applicant
      class Detail
        attr_reader :applicant_id

        def initialize(applicant_id)
          @applicant_id =  applicant_id
        end

        def call
          detail
        end

        private

        def detail
          SoapService.new(operation, message).call
        end

        def operation
          :get_form_applicant_application_status
        end

        def message
          {
              ApplicantId: applicant_id
          }
        end
      end
    end
  end
end
