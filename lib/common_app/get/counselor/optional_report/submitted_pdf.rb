module CommonApp
  module Get
    module Counselor
      module OptionalRepoert
        class SubmittedPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/optional-report/submitted-pdf"
          end
        end
      end
    end
  end
end
