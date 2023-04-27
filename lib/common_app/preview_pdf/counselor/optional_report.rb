module CommonApp
  module PreviewPdf
    module Counselor
      class OptionalReport < Base
        def endpoint
          "recommender/counselor/#{counselor_id}/#{applicant_id}/optional-report/preview-pdf"
        end
      end
    end
  end
end
