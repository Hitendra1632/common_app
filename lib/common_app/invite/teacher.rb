module CommonApp
  module Invite
    class Teacher
      attr_reader :applicant_id, :teacher, :subject

      def initialize(applicant_id, teacher, subject)
        @applicant_id = applicant_id
        @teacher = teacher
        @subject = subject
      end

      def call
        invite
      end

      private

      def invite
        SoapService.new(operation, message).call
      end

      def operation
        :invite_teacher
      end

      def message
        {
          ApplicantId: applicant_id,
          Email: teacher[:email],
          FirstName: teacher[:first_name],
          LastName: teacher[:last_name],
          Subject: subject,
          Title: teacher[:title]
        }
      end
    end
  end
end
