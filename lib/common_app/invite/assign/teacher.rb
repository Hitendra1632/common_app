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
          SoapService.new(operation, message).call
        end

        def operation
          :assign_teacher
        end

        def message
          {
            ApplicantId: applicant_id,
            RecommenderId: recommender_id,
            MemberId: member_id
          }
        end
      end
    end
  end
end
