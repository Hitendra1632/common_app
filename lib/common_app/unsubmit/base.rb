module CommonApp
  module Unsubmit
    class Base
      attr_reader :params

      def initialize(params)
        @params = params
      end

      def call
        unsubmit
      end

      def method
        'delete'
      end

      def unsubmit
        RestApi.new(method, endpoint, params).call
      end
    end
  end
end
