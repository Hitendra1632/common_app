module CommonApp
  module Submit
    module Counselor
      # for submit FeeWaiver
      class FeeWaiver < Base
        def endpoint
          "counselor/submit/fee-waiver"
        end
      end
    end
  end
end
