module CommonApp
  module Post
    module Counselor
      class Profile < Base
        attr_reader :params

        def initialize(recommender_id, params)
          @params = params
          @recommender_id = recommender_id
        end

        def endpoint
          "recommender/counselor/profile"
        end

        def post
          RestApi.new(method, endpoint, params.merge(recommenderId: recommender_id)).call
        end
      end
    end
  end
end
