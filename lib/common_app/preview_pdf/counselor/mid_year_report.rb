module CommonApp
  module PreviewPdf
    module Counselor
      class MidYearReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/midyear-report/preview-pdf"
        end
      end
    end
  end
end
