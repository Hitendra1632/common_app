module CommonApp
  module Get
    module Applicant
      class AuthorizationStatus
        attr_reader :applicant_id

        def initialize(applicant_id)
          @applicant_id = applicant_id
        end

        def call
          authorization_status
        end

        private

        def authorization_status
          SoapService.new(operation, message).call
        end

        def operation
          :get_form_applicant_authorization_status
        end

        def message
          { ApplicantId: applicant_id }
        end
      end
    end
  end
end
