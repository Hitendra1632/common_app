module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit OptionalReport
      class OptionalReport < Base
        def endpoint
          "recommender/counselor/submit/optional-report"
        end
      end
    end
  end
end
