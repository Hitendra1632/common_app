module CommonApp
  module Get
    module Counselor
      module FinalReport
        class SubmittedPdf < Base
          attr_reader :recommender_id, :applicant_id, :member_id

          def initialize(recommender_id, applicant_id, member_id)
            @recommender_id = recommender_id
            @applicant_id   = applicant_id
            @member_id      = member_id
          end

          def endpoint
            "recommender/counselor/#{@recommender_id}/#{@applicant_id}/#{@member_id}/final-report/submitted-pdf"
          end
        end
      end
    end
  end
end
