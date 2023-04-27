module CommonApp
  module SubmittedPdf
    module Counselor
      class FinalReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/#{member_id}/final-report/submitted-pdf"
        end
      end
    end
  end
end
