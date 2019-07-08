module CommonApp
  module Submit
    module Counselor
      # for submit OptionalReport
      class OptionalReport
        attr_reader :params

        def initialize(params)
          @params = params
        end

        def call
          submitted_form
        end

        private

        def submitted_form
          SoapService.new(operation, params).call
        end

        def operation
          :submit_counselor_optional_report
        end
      end
    end
  end  
end
