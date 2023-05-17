module CommonApp
  module SubmittedPdf
    module Counselor
      class SchoolReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/secondary-report/submitted-pdf"
        end
      end
    end
  end
end
