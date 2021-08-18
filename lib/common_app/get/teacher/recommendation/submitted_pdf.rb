module CommonApp
  module Get
    module Teacher
      module Recommendation
        class SubmittedPdf < Base
          def endpoint
            "recommender/teacher/#{params[:recommender_id]}/#{params[:applicant_id]}/#{params[:member_id]}/recommendation/submitted-pdf"
          end
        end
      end
    end
  end
end
