module CommonApp
  module SubmittedPdf
    module Counselor
      class MidYearReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/midyear-report/submitted-pdf"
        end
      end
    end
  end
end
