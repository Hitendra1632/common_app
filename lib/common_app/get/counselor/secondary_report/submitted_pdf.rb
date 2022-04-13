module CommonApp
  module Get
    module Counselor
      module SecondaryReport
        class SubmittedPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/secondary-report/submitted-pdf"
          end
        end
      end
    end
  end
end
