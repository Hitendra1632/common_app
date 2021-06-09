module CommonApp
  module Post
    module Counselor
      # for sending early decision
      class EarlyDecision < Base
        def endpoint
          "recommender/counselor/eary-decision"
        end
      end
    end
  end
end
