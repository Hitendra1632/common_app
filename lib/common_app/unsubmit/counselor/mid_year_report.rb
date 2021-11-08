module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit MidYearReport
      class MidYearReport < Base
        def endpoint
          "recommender/counselor/submit/midyear-report"
        end
      end
    end
  end
end
