module CommonApp
  module Post
    module Teacher
      # for sending Recommendation
      class Recommendation < Base
        def endpoint
          "recommender/teacher/recommendation"
        end
      end
    end
  end
end
