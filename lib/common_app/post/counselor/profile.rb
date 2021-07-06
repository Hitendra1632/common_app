module CommonApp
  module Post
    module Counselor
      class Profile < Base
        def endpoint
          "recommender/counselor/profile"
        end
      end
    end
  end
end
