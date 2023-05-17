module CommonApp
  module PreviewPdf
    module Counselor
      class SchoolReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/secondary-report/preview-pdf"
        end
      end
    end
  end
end
