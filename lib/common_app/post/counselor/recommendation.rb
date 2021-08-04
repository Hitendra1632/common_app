module CommonApp
  module Post
    module Counselor
      # for sending Recommendation
      class Recommendation < Base
        def endpoint
          "recommender/counselor/recommendation"
        end
      end
    end
  end
end
