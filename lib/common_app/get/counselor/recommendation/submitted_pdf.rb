module CommonApp
  module Get
    module Counselor
      module Recommendation
        class SubmittedPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/recommendation/submitted-pdf"
          end
        end
      end
    end
  end
end
