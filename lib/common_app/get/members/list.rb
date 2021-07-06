module CommonApp
  module Get
    module Members
      class List
        def call
          members
        end

        private

        def members
          RestApi.new(method, endpoint).call
        end

        def method
          'get'
        end

        def endpoint
          "datacatalog/colleges"
        end
      end
    end
  end
end
