module CommonApp
  module Get
    module Teacher
      module Recommendation
        class PreviewPdf < Base
          def endpoint
            "recommender/teacher/#{params[:recommender_id]}/#{params[:applicant_id]}/#{params[:member_id]}/recommendation/preview-pdf"
          end
        end
      end
    end
  end
end
