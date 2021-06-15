module CommonApp
  module Submit
    module Counselor
      # for submit MidYearReport
      class MidYearReport < Base
        def endpoint
          "recommender/counselor/submit/midyear-report"
        end
      end
    end
  end
end
