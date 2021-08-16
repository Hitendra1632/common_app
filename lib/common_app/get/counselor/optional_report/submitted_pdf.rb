module CommonApp
  module Get
    module Counselor
      module OptionalRepoert
        class SubmittedPdf < Base
          attr_reader :recommender_id, :applicant_id

          def initialize(recommender_id, applicant_id)
            @recommender_id = recommender_id
            @applicant_id   = applicant_id
          end

          def endpoint
            "recommender/counselor/#{@recommender_id}/#{@applicant_id}/optional-report/submitted-pdf"
          end
        end
      end
    end
  end
end
