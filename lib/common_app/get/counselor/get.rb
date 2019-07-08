module CommonApp
  module Get
    module Counselor
      class Get
        attr_reader :email

        def initialize(email)
          @email = email
        end

        def call
          counselor
        end

        private

        def counselor
          SoapService.new(operation, message).call
        end

        def operation
          :get_counselor
        end

        def message
          { Email: email }
        end
      end
    end
  end
end
