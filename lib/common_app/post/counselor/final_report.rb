module CommonApp
  module Post
    module Counselor
      # for sending FinalReport
      class FinalReport < Base
        def endpoint
          "recommender/counselor/final-report"
        end
      end
    end
  end
end
