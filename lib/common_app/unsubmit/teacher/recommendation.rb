module CommonApp
  module Unsubmit
    module Teacher
      # to unsubmit Recommendation
      class Recommendation < Base
        def endpoint
          "recommender/teacher/submit/recommendation"
        end
      end
    end
  end
end
