module CommonApp
  module Submit
    module Counselor
      # for submit OptionalReport
      class OptionalReport < Base
        def endpoint
          "recommender/counselor/submit/optional-report"
        end
      end
    end
  end
end
