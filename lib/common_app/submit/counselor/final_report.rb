module CommonApp
  module Submit
    module Counselor
      # for submit FinalReport
      class FinalReport < Base
        def endpoint
          "counselor/submit/final-report"
        end
      end
    end
  end
end
