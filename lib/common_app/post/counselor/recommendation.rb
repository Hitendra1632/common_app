module CommonApp
  module Post
    module Counselor
      # for sending Recommendation
      class Recommendation
        attr_reader :params

        def initialize(params)
          @params = params
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
          RestApi.new(method, endpoint, params).call
        end
      end
    end
  end
end
