module CommonApp
  module Get
    module Counselor
      module MidyearRepoert
        class PreviewPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/midyear-report/preview-pdf"
          end
        end
      end
    end
  end
end
