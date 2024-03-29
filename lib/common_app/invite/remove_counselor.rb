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
        RestApi.new(method, endpoint).call
      end

      def method
        'delete'
      end

      def endpoint
        "recommender/counselor/invite/#{applicant_id}/#{recommender_id}"
      end
    end
  end
end
