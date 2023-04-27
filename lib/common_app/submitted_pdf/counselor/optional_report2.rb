module CommonApp
  module SubmittedPdf
    module Counselor
      class OptionalReport2 < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/optional-report-2/submitted-pdf"
        end
      end
    end
  end
end
