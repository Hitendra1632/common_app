module CommonApp
  module Get
    class Base
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
