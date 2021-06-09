module CommonApp
  module Submit
    module Counselor
      # for submit School Report
      class SchoolReport < Base
        def endpoint
          "counselor/submit/secondary-report"
        end
      end
    end
  end
end
