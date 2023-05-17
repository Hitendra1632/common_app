module CommonApp
  module SubmittedPdf
    module Counselor
      class OptionalReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/optional-report/submitted-pdf"
        end
      end
    end
  end
end
