module CommonApp
  module Get
    module Counselor
      module FinalReport
        class PreviewPdf < Base
          def endpoint
            "recommender/counselor/#{params[:recommender_id]}/#{params[:applicant_id]}/#{params[:member_id]}/final-report/submitted-pdf"
          end
        end
      end
    end
  end
end
