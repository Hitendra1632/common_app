module CommonApp
  module Submit
    module Counselor
      # for submit Recommendation
      class Recommendation < Base
        def endpoint
          "recommender/counselor/submit/recommendation"
        end
      end
    end
  end
end
