module CommonApp
  module Get
    module Members
      class Deadline

        def call
          deadlines
        end

        private

        def deadlines
          SoapService.new(operation).call
        end

        def operation
          :get_member_deadlines
        end
      end
    end
  end
end
