module CommonApp
  module Get
    module Counselor
      module SecondaryRepoert
        class PreviewPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/secondary-report/preview-pdf"
          end
        end
      end
    end
  end
end
