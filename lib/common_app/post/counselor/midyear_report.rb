module CommonApp
  module Post
    module Counselor
      # for sending Mid year Report
      class MidyearReport < Base
        def endpoint
          "counselor/midyear-report"
        end
      end
    end
  end
end
