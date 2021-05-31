module CommonApp
  module Post
    module Teacher
      # for sending Teacher Profile
      class Profile < Base
        def endpoint
          "recommender/teacher/profile"
        end
      end
    end
  end
end
