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
        SoapService.new(operation, message).call
      end

      def operation
        :invite_counselor
      end

      def message
        {
          ApplicantId: applicant_id,
          Email: counselor[:email],
          Title: counselor[:title],
          FirstName: counselor[:first_name],
          LastName: counselor[:last_name]
        }
      end
    end
  end
end
