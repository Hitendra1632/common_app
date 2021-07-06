module CommonApp
  module Post
    class Base
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        post
      end

      def method
        'post'
      end

      def post
        RestApi.new(method, endpoint, params).call
      end
    end
  end
end
