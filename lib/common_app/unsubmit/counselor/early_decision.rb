module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit EarlyDecision
      class EarlyDecision < Base
        def endpoint
          "recommender/counselor/submit/early-decision"
        end
      end
    end
  end
end
