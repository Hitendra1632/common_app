module CommonApp
  module Get
    class Base
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        get
      end

      def method
        'get'
      end

      def get
        RestApi.new(method, endpoint).call
      end
    end
  end
end
