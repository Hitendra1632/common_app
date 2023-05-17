module CommonApp
  module SubmittedPdf
    module Teacher
      class Recommendation < Base
        def endpoint
          "recommender/teacher/#{teacher_id}/#{applicant_id}/#{member_id}/recommendation/submitted-pdf"
        end
      end
    end
  end
end
