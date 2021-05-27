module CommonApp
  module Post
    module Counselor
      # for sending early decision
      class EarlyDecision < Base
        def endpoint
          "counselor/eary-decision"
        end
      end
    end
  end
end
