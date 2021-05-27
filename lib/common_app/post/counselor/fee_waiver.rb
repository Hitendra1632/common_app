module CommonApp
  module Post
    module Counselor
      # for sending Fee Waiver
      class FeeWaiver < Base
        def endpoint
          "counselor/fee-waiver"
        end
      end
    end
  end
end
