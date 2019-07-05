module CommonApp
  module Get
    module Members
      class List
        def call
          members
        end

        private

        def members
          SoapService.new(operation).call
        end

        def operation
          :get_members
        end
      end
    end
  end
end
