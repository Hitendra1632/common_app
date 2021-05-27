module CommonApp
  module Post
    module Teacher
      # for sending Teacher Profile
      class Profile < Base
        def initialize(recommender_id, params)
          @params = params
          @recommender_id = recommender_id
        end

        private

        def endpoint
          "recommender/teacher/profile"
        end

        def post
          RestApi.new(method, endpoint, params.merge(recommenderId: recommender_id)).call
        end
      end
    end
  end
end
