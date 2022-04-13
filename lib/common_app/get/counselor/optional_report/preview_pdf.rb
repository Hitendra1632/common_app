module CommonApp
  module Get
    module Counselor
      module OptionalReport
        class PreviewPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/optional-report/preview-pdf"
          end
        end
      end
    end
  end
end
