module CommonApp
  module Get
    module Applicant
      class Details < Base
        attr_reader :applicant_id

        def initialize(applicant_id)
          @applicant_id =  applicant_id
        end

        def endpoint
          "applicant/#{ applicant_id }/details"
        end
      end
    end
  end
end
