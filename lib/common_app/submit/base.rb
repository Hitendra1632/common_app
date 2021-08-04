module CommonApp
  module Submit
    class Base
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        submit
      end

      def method
        'post'
      end

      def submit
        RestApi.new(method, endpoint, params).call
      end
    end
  end
end
