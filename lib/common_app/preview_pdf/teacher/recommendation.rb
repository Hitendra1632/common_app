module CommonApp
  module PreviewPdf
    module Teacher
      class Recommendation < Base
        def endpoint
          "recommender/teacher/#{teacher_id}/#{applicant_id}/#{member_id}/recommendation/preview-pdf"
        end
      end
    end
  end
end
