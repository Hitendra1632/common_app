module CommonApp
  module Get
    module Teacher
      class RecommendationStatus
        attr_reader :applicant_id, :member_id, :recommender_id

        def initialize(applicant_id, member_id, recommender_id)
          @applicant_id =  applicant_id
          @member_id = member_id
          @recommender_id = recommender_id
        end

        def call
          recommendation_status
        end

        private

        def recommendation_status
          SoapService.new(operation, message).call
        end

        def operation
          :get_form_teacher_recommendation_status
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
