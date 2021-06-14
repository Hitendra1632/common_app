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
        RestApi.new(method, endpoint, params).call
      end

      def params
        {
          applicantId: applicant_id,
          email: teacher[:email],
          firstName: teacher[:first_name],
          lastName: teacher[:last_name],
          title: teacher[:title],
          subject: subject
        }
      end

      def method
        'post'
      end

      def endpoint
        "recommender/teacher/invite"
      end
    end
  end
end
