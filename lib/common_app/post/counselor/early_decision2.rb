module CommonApp
  module Post
    module Counselor
      # for sending early decision2
      class EarlyDecision2 < Base
        def endpoint
          "recommender/counselor/early-decision2"
        end
      end
    end
  end
end
