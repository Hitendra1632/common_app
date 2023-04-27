module CommonApp
  module PreviewPdf
    module Counselor
      class Recommendation < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/recommendation/preview-pdf"
        end
      end
    end
  end
end
