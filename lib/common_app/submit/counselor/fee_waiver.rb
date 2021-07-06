module CommonApp
  module Submit
    module Counselor
      # for submit FeeWaiver
      class FeeWaiver < Base
        def endpoint
          "recommender/counselor/submit/fee-waiver"
        end
      end
    end
  end
end
