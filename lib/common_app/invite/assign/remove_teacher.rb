module CommonApp
  module Invite
    module Assign
      class RemoveTeacher
        attr_reader :applicant_id, :recommender_id, :member_id

        def initialize(applicant_id, recommender_id, member_id)
          @applicant_id = applicant_id
          @recommender_id = recommender_id
          @member_id = member_id
        end

        def call
          remove
        end

        private

        def remove
          RestApi.new(method, endpoint, params).call
        end

        def method
          'delete'
        end

        def endpoint
          "recommender/teacher/assign/#{applicant_id}/#{recommender_id}/#{member_id}"
        end
      end
    end
  end
end
