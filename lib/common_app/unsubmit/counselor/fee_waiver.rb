module CommonApp
  module Unsubmit
    module Counselor
      # to unsubmit FeeWaiver
      class FeeWaiver < Base
        def endpoint
          "recommender/counselor/submit/fee-waiver"
        end
      end
    end
  end
end
