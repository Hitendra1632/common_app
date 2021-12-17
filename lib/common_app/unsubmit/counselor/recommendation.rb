module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit Recommendation
      class Recommendation < Base
        def endpoint
          "recommender/counselor/submit/recommendation"
        end
      end
    end
  end
end
