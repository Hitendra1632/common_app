module CommonApp
  module Post
    module Counselor
      # for sending  Optional Report
      class OptionalReport < Base
        def endpoint
          "counselor/optional-report"
        end
      end
    end
  end
end
