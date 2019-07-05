module CommonApp
  module Get
    module Counselor
      class Base
        attr_reader :applicant_id, :member_id, :recommender_id

        def initialize(applicant_id, member_id, recommender_id)
          @applicant_id =  applicant_id
          @member_id = member_id
          @recommender_id = recommender_id
        end

        def call
          status
        end
        
        protected
        
        def status
          SoapService.new(operation, message).call
        end

        def message
          {
              ApplicantId: applicant_id,
              MemberId: member_id,
              RecommenderId: recommender_id
          }
        end
      end
    end
  end
end
