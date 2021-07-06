module CommonApp
  module Post
    module Counselor
      # for sending early decision
      class EarlyDecision < Base
        def endpoint
          "recommender/counselor/early-decision"
        end
      end
    end
  end
end
