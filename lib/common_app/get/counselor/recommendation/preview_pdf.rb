module CommonApp
  module Get
    module Counselor
      module Recommendation
        class PreviewPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/recommendation/preview-pdf"
          end
        end
      end
    end
  end
end
