module CommonApp
  module Post
    module Counselor
      class Profile
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
          "counselor/profile"
        end

        def post
          RestApi.new(method, endpoint, params).call
        end
      end
    end
  end
end
