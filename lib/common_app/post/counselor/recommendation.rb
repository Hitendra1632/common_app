module CommonApp
  module Post
    module Counselor
      # for sending Recommendation
      class Recommendation
        attr_reader :params, :recommender_id, :applicant_id

        def initialize(recommender_id, applicant_id, params)
          @params = params
          @recommender_id = recommender_id
          @applicant_id   = applicant_id
        end

        def call
          post
        end

        private

        def method
          'post'
        end

        def endpoint
          "counselor/recommendation"
        end

        def post
          RestApi.new(method, endpoint, params.merge(applicantId: applicant_id, recommenderId: recommender_id)).call
        end
      end
    end
  end
end
