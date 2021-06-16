module CommonApp
  module Submit
    module Counselor
      # for submit EarlyDecision
      class EarlyDecision < Base
        def endpoint
          "recommender/counselor/submit/early-decision"
        end
      end
    end
  end
end
