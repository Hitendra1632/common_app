module CommonApp
  module Get
    module Counselor
      module MidyearRepoert
        class SubmittedPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/midyear-report/submitted-pdf"
          end
        end
      end
    end
  end
end
