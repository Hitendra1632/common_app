module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit School Report
      class SchoolReport < Base
        def endpoint
          "recommender/counselor/submit/secondary-report"
        end
      end
    end
  end
end
