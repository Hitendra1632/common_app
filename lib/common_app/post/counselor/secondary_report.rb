module CommonApp
  module Post
    module Counselor
      # for sending SecondaryReport
      class SecondaryReport < Base
        def endpoint
          "counselor/secondary-report"
        end
      end
    end
  end
end
