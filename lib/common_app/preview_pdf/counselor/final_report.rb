module CommonApp
  module PreviewPdf
    module Counselor
      class FinalReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/final-report/preview-pdf"
        end
      end
    end
  end
end
