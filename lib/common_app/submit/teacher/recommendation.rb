module CommonApp
  module Submit
    module Teacher
      # for submit Recommendation
      class Recommendation < Base
        def endpoint
          "teacher/submit/recommendation"
        end
      end
    end
  end
end
