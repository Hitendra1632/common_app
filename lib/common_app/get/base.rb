module CommonApp
  module Get
    module Counselor
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
end
