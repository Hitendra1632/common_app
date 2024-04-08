module CommonApp
  module Invite
    class RemoveExternalRecommenderInvites
      attr_reader :applicant_id

      def initialize(applicant_id)
        @applicant_id = applicant_id
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
        "recommender/external-invites/#{applicant_id}"
      end
    end
  end
end
