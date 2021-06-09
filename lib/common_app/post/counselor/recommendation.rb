module CommonApp
  module Post
    module Counselor
      # for sending Recommendation
      class Recommendation < Base
        def endpoint
          "counselor/recommendation"
        end
      end
    end
  end
end
