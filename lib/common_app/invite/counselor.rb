module CommonApp
  module Invite
    class Counselor
      attr_reader :applicant_id, :counselor

      def initialize(applicant_id, counselor)
        @applicant_id = applicant_id
        @counselor = counselor
      end

      def call
        invite
      end

      private

      def invite
        RestApi.new(method, endpoint, params).call
      end

      def params
        {
          applicant_id: applicant_id,
          email: counselor[:email],
          firstName: counselor[:first_name],
          lastName: counselor[:last_name],
          title: counselor[:title]
        }
      end

      def method
        'post'
      end

      def endpoint
        "counselor/invite"
      end
    end
  end
end
