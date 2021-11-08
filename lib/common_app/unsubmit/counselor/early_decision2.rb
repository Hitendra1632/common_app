module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit EarlyDecision2
      class EarlyDecision2 < Base
        def endpoint
          "recommender/counselor/submit/early-decision2"
        end
      end
    end
  end
end
