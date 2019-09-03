module CommonApp
  module Submit
    module Counselor
      # for submit FinalReport
      class FinalReport
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
          :submit_counselor_final_report
        end
      end
    end
  end
end
