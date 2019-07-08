module CommonApp
  module Invite
    class RemoveCounselor
      attr_reader :applicant_id, :recommender_id

      def initialize(applicant_id, recommender_id)
        @applicant_id = applicant_id
        @recommender_id = recommender_id
      end

      def call
        remove
      end

      private

      def remove
        SoapService.new(operation, message).call
      end

      def operation
        :invite_counselor_remove
      end

      def message
        { ApplicantId: applicant_id, RecommenderId: recommender_id }
      end
    end
  end
end
