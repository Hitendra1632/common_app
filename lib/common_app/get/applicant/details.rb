module CommonApp
  module Get
    module Applicant
      class Details
        attr_reader :applicant_id

        def initialize(applicant_id)
          @applicant_id =  applicant_id
        end

        def call
          details
        end

        private

        def details
          RestApi.new(method, endpoint, params).call
        end

        def method
          'get'
        end

        def endpoint
          "applicant/#{ applicant_id }"
        end
      end
    end
  end
end
