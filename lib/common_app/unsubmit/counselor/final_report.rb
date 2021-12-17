module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit FinalReport
      class FinalReport < Base
        def endpoint
          "recommender/counselor/submit/final-report"
        end
      end
    end
  end
end
