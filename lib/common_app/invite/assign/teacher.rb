module CommonApp
  module Invite
    module Assign
      class Teacher
        attr_reader :applicant_id, :recommender_id, :member_id

        def initialize(applicant_id, recommender_id, member_id)
          @applicant_id = applicant_id
          @recommender_id = recommender_id
          @member_id = member_id
        end

        def call
          assign
        end

        private

        def assign
          RestApi.new(method, endpoint, params).call
        end

        def method
          'post'
        end

        def endpoint
          "recommender/teacher/assign"
        end

        def params
          {
            applicantId: applicant_id,
            memberId: member_id,
            recommenderId: recommender_id
          }
        end
      end
    end
  end
end
