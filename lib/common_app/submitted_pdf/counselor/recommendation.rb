module CommonApp
  module SubmittedPdf
    module Counselor
      class Recommendation < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/recommendation/submitted-pdf"
        end
      end
    end
  end
end
